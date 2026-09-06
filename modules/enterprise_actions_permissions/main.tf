resource "github_enterprise_actions_permissions" "this" {
  allowed_actions       = var.allowed_actions
  enabled_organizations = var.enabled_organizations
  enterprise_slug       = var.enterprise_slug

  dynamic "allowed_actions_config" {
    for_each = var.allowed_actions_config == null ? [] : [var.allowed_actions_config]
    content {
      github_owned_allowed = allowed_actions_config.value.github_owned_allowed
      patterns_allowed     = allowed_actions_config.value.patterns_allowed
      verified_allowed     = allowed_actions_config.value.verified_allowed
    }
  }

  dynamic "enabled_organizations_config" {
    for_each = var.enabled_organizations_config == null ? [] : [var.enabled_organizations_config]
    content {
      organization_ids = enabled_organizations_config.value.organization_ids
    }
  }
}
