resource "github_actions_repository_permissions" "this" {
  allowed_actions      = var.allowed_actions
  enabled              = var.enabled
  repository           = var.repository
  sha_pinning_required = var.sha_pinning_required

  dynamic "allowed_actions_config" {
    for_each = var.allowed_actions_config == null ? [] : [var.allowed_actions_config]
    content {
      github_owned_allowed = allowed_actions_config.value.github_owned_allowed
      patterns_allowed     = allowed_actions_config.value.patterns_allowed
      verified_allowed     = allowed_actions_config.value.verified_allowed
    }
  }
}
