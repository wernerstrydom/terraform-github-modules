resource "github_repository_environment" "this" {
  can_admins_bypass   = var.can_admins_bypass
  environment         = var.environment
  prevent_self_review = var.prevent_self_review
  repository          = var.repository
  wait_timer          = var.wait_timer

  dynamic "deployment_branch_policy" {
    for_each = var.deployment_branch_policy == null ? [] : [var.deployment_branch_policy]
    content {
      custom_branch_policies = deployment_branch_policy.value.custom_branch_policies
      protected_branches     = deployment_branch_policy.value.protected_branches
    }
  }

  dynamic "reviewers" {
    for_each = var.reviewers == null ? [] : [var.reviewers]
    content {
      teams = reviewers.value.teams
      users = reviewers.value.users
    }
  }
}

module "secrets" {
  source   = "../actions_environment_secret"
  for_each = var.secrets

  environment = github_repository_environment.this.environment
  repository  = github_repository_environment.this.repository

  key_id          = each.value.key_id
  secret_name     = each.value.secret_name
  value           = each.value.value
  value_encrypted = each.value.value_encrypted
}

module "variables" {
  source   = "../actions_environment_variable"
  for_each = var.variables

  environment = github_repository_environment.this.environment
  repository  = github_repository_environment.this.repository

  value         = each.value.value
  variable_name = each.value.variable_name
}

module "deployment_policies" {
  source   = "../repository_environment_deployment_policy"
  for_each = var.deployment_policies

  environment = github_repository_environment.this.environment
  repository  = github_repository_environment.this.repository

  branch_pattern = each.value.branch_pattern
  tag_pattern    = each.value.tag_pattern
}
