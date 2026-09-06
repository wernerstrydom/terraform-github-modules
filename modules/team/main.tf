resource "github_team" "this" {
  description           = var.description
  ldap_dn               = var.ldap_dn
  name                  = var.name
  notification_setting  = var.notification_setting
  parent_team_id        = var.parent_team_id
  parent_team_read_id   = var.parent_team_read_id
  parent_team_read_slug = var.parent_team_read_slug
  privacy               = var.privacy
}

module "memberships" {
  source   = "../team_membership"
  for_each = var.memberships

  team_id = github_team.this.id

  role     = each.value.role
  username = each.value.username
}

module "repositories" {
  source   = "../team_repository"
  for_each = var.repositories

  team_id = github_team.this.id

  permission = each.value.permission
  repository = each.value.repository
}

module "settings" {
  source = "../team_settings"
  count  = var.settings == null ? 0 : 1

  team_id = github_team.this.id

  notify                    = var.settings.notify
  review_request_delegation = var.settings.review_request_delegation
}
