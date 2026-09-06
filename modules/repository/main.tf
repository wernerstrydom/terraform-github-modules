resource "github_repository" "this" {
  allow_auto_merge            = var.allow_auto_merge
  allow_forking               = var.allow_forking
  allow_merge_commit          = var.allow_merge_commit
  allow_rebase_merge          = var.allow_rebase_merge
  allow_squash_merge          = var.allow_squash_merge
  allow_update_branch         = var.allow_update_branch
  archive_on_destroy          = var.archive_on_destroy
  archived                    = var.archived
  auto_init                   = var.auto_init
  delete_branch_on_merge      = var.delete_branch_on_merge
  description                 = var.description
  etag                        = var.etag
  fork                        = var.fork
  gitignore_template          = var.gitignore_template
  has_discussions             = var.has_discussions
  has_issues                  = var.has_issues
  has_projects                = var.has_projects
  has_wiki                    = var.has_wiki
  homepage_url                = var.homepage_url
  is_template                 = var.is_template
  license_template            = var.license_template
  merge_commit_message        = var.merge_commit_message
  merge_commit_title          = var.merge_commit_title
  name                        = var.name
  source_owner                = var.source_owner
  source_repo                 = var.source_repo
  squash_merge_commit_message = var.squash_merge_commit_message
  squash_merge_commit_title   = var.squash_merge_commit_title
  topics                      = var.topics
  visibility                  = var.visibility
  web_commit_signoff_required = var.web_commit_signoff_required

  dynamic "security_and_analysis" {
    for_each = var.security_and_analysis == null ? [] : [var.security_and_analysis]
    content {

      dynamic "advanced_security" {
        for_each = security_and_analysis.value.advanced_security == null ? [] : [security_and_analysis.value.advanced_security]
        content {
          status = advanced_security.value.status
        }
      }

      dynamic "code_security" {
        for_each = security_and_analysis.value.code_security == null ? [] : [security_and_analysis.value.code_security]
        content {
          status = code_security.value.status
        }
      }

      dynamic "secret_scanning" {
        for_each = security_and_analysis.value.secret_scanning == null ? [] : [security_and_analysis.value.secret_scanning]
        content {
          status = secret_scanning.value.status
        }
      }

      dynamic "secret_scanning_ai_detection" {
        for_each = security_and_analysis.value.secret_scanning_ai_detection == null ? [] : [security_and_analysis.value.secret_scanning_ai_detection]
        content {
          status = secret_scanning_ai_detection.value.status
        }
      }

      dynamic "secret_scanning_non_provider_patterns" {
        for_each = security_and_analysis.value.secret_scanning_non_provider_patterns == null ? [] : [security_and_analysis.value.secret_scanning_non_provider_patterns]
        content {
          status = secret_scanning_non_provider_patterns.value.status
        }
      }

      dynamic "secret_scanning_push_protection" {
        for_each = security_and_analysis.value.secret_scanning_push_protection == null ? [] : [security_and_analysis.value.secret_scanning_push_protection]
        content {
          status = secret_scanning_push_protection.value.status
        }
      }
    }
  }

  dynamic "template" {
    for_each = var.template == null ? [] : [var.template]
    content {
      include_all_branches = template.value.include_all_branches
      owner                = template.value.owner
      repository           = template.value.repository
    }
  }
}

module "collaborators" {
  source   = "../repository_collaborator"
  for_each = var.collaborators

  repository = github_repository.this.name

  permission                  = each.value.permission
  permission_diff_suppression = each.value.permission_diff_suppression
  username                    = each.value.username
}

module "webhooks" {
  source   = "../repository_webhook"
  for_each = var.webhooks

  repository = github_repository.this.name

  active        = each.value.active
  etag          = each.value.etag
  events        = each.value.events
  configuration = each.value.configuration
}

module "deploy_keys" {
  source   = "../repository_deploy_key"
  for_each = var.deploy_keys

  repository = github_repository.this.name

  key       = each.value.key
  read_only = each.value.read_only
  title     = each.value.title
}

module "environments" {
  source   = "../repository_environment"
  for_each = var.environments

  repository = github_repository.this.name

  can_admins_bypass        = each.value.can_admins_bypass
  environment              = each.value.environment
  prevent_self_review      = each.value.prevent_self_review
  wait_timer               = each.value.wait_timer
  deployment_branch_policy = each.value.deployment_branch_policy
  reviewers                = each.value.reviewers
  secrets                  = each.value.secrets
  variables                = each.value.variables
  deployment_policies      = each.value.deployment_policies
}

module "actions_secrets" {
  source   = "../actions_secret"
  for_each = var.actions_secrets

  repository = github_repository.this.name

  key_id          = each.value.key_id
  secret_name     = each.value.secret_name
  value           = each.value.value
  value_encrypted = each.value.value_encrypted
}

module "actions_variables" {
  source   = "../actions_variable"
  for_each = var.actions_variables

  repository = github_repository.this.name

  value         = each.value.value
  variable_name = each.value.variable_name
}

module "dependabot_secrets" {
  source   = "../dependabot_secret"
  for_each = var.dependabot_secrets

  repository = github_repository.this.name

  key_id          = each.value.key_id
  secret_name     = each.value.secret_name
  value           = each.value.value
  value_encrypted = each.value.value_encrypted
}

module "codespaces_secrets" {
  source   = "../codespaces_secret"
  for_each = var.codespaces_secrets

  repository = github_repository.this.name

  encrypted_value = each.value.encrypted_value
  plaintext_value = each.value.plaintext_value
  secret_name     = each.value.secret_name
}

module "branch_protections" {
  source   = "../branch_protection"
  for_each = var.branch_protections

  repository_id = github_repository.this.node_id

  allows_deletions                = each.value.allows_deletions
  allows_force_pushes             = each.value.allows_force_pushes
  enforce_admins                  = each.value.enforce_admins
  force_push_bypassers            = each.value.force_push_bypassers
  lock_branch                     = each.value.lock_branch
  pattern                         = each.value.pattern
  require_conversation_resolution = each.value.require_conversation_resolution
  require_signed_commits          = each.value.require_signed_commits
  required_linear_history         = each.value.required_linear_history
  required_pull_request_reviews   = each.value.required_pull_request_reviews
  required_status_checks          = each.value.required_status_checks
  restrict_pushes                 = each.value.restrict_pushes
}

module "rulesets" {
  source   = "../repository_ruleset"
  for_each = var.rulesets

  repository = github_repository.this.name

  enforcement   = each.value.enforcement
  name          = each.value.name
  target        = each.value.target
  bypass_actors = each.value.bypass_actors
  conditions    = each.value.conditions
  rules         = each.value.rules
}

module "custom_properties" {
  source   = "../repository_custom_property"
  for_each = var.custom_properties

  repository = github_repository.this.name

  property_name  = each.value.property_name
  property_type  = each.value.property_type
  property_value = each.value.property_value
}

module "autolink_references" {
  source   = "../repository_autolink_reference"
  for_each = var.autolink_references

  repository = github_repository.this.name

  is_alphanumeric     = each.value.is_alphanumeric
  key_prefix          = each.value.key_prefix
  target_url_template = each.value.target_url_template
}

module "files" {
  source   = "../repository_file"
  for_each = var.files

  repository = github_repository.this.name

  branch              = each.value.branch
  commit_author       = each.value.commit_author
  commit_email        = each.value.commit_email
  commit_message      = each.value.commit_message
  content             = each.value.content
  file                = each.value.file
  overwrite_on_create = each.value.overwrite_on_create
}

module "issue_labels" {
  source   = "../issue_label"
  for_each = var.issue_labels

  repository = github_repository.this.name

  color       = each.value.color
  description = each.value.description
  etag        = each.value.etag
  name        = each.value.name
}

module "milestones" {
  source   = "../repository_milestone"
  for_each = var.milestones

  repository = github_repository.this.name

  description = each.value.description
  due_date    = each.value.due_date
  owner       = each.value.owner
  state       = each.value.state
  title       = each.value.title
}

module "pages" {
  source = "../repository_pages"
  count  = var.pages == null ? 0 : 1

  repository = github_repository.this.name

  build_type     = var.pages.build_type
  cname          = var.pages.cname
  https_enforced = var.pages.https_enforced
  public         = var.pages.public
}

module "dependabot_security_updates" {
  source = "../repository_dependabot_security_updates"
  count  = var.dependabot_security_updates == null ? 0 : 1

  repository = github_repository.this.name

  enabled = var.dependabot_security_updates.enabled
}

module "vulnerability_alerts" {
  source = "../repository_vulnerability_alerts"
  count  = var.vulnerability_alerts == null ? 0 : 1

  repository = github_repository.this.name

  enabled = var.vulnerability_alerts.enabled
}

module "actions_permissions" {
  source = "../actions_repository_permissions"
  count  = var.actions_permissions == null ? 0 : 1

  repository = github_repository.this.name

  allowed_actions        = var.actions_permissions.allowed_actions
  enabled                = var.actions_permissions.enabled
  sha_pinning_required   = var.actions_permissions.sha_pinning_required
  allowed_actions_config = var.actions_permissions.allowed_actions_config
}

module "workflow_permissions" {
  source = "../workflow_repository_permissions"
  count  = var.workflow_permissions == null ? 0 : 1

  repository = github_repository.this.name

  can_approve_pull_request_reviews = var.workflow_permissions.can_approve_pull_request_reviews
  default_workflow_permissions     = var.workflow_permissions.default_workflow_permissions
}

module "actions_access_level" {
  source = "../actions_repository_access_level"
  count  = var.actions_access_level == null ? 0 : 1

  repository = github_repository.this.name

  access_level = var.actions_access_level.access_level
}

module "default_branch" {
  source = "../branch_default"
  count  = var.default_branch == null ? 0 : 1

  repository = github_repository.this.name

  branch          = var.default_branch.branch
  etag            = var.default_branch.etag
  rename          = var.default_branch.rename
  wait_for_rename = var.default_branch.wait_for_rename
}
