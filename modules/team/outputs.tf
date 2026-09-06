output "description" {
  description = "A description of the team."
  value       = github_team.this.description
  depends_on  = [module.memberships, module.repositories, module.settings]
}

output "etag" {
  value      = github_team.this.etag
  depends_on = [module.memberships, module.repositories, module.settings]
}

output "id" {
  value      = github_team.this.id
  depends_on = [module.memberships, module.repositories, module.settings]
}

output "ldap_dn" {
  description = "The LDAP Distinguished Name of the group where membership will be synchronized. Only available in GitHub Enterprise Server."
  value       = github_team.this.ldap_dn
  depends_on  = [module.memberships, module.repositories, module.settings]
}

output "members_count" {
  value      = github_team.this.members_count
  depends_on = [module.memberships, module.repositories, module.settings]
}

output "memberships" {
  value = module.memberships
}

output "name" {
  description = "The name of the team."
  value       = github_team.this.name
  depends_on  = [module.memberships, module.repositories, module.settings]
}

output "node_id" {
  description = "The Node ID of the created team."
  value       = github_team.this.node_id
  depends_on  = [module.memberships, module.repositories, module.settings]
}

output "notification_setting" {
  description = "The notification setting for the team. Must be one of 'notifications_enabled' or 'notifications_disabled'."
  value       = github_team.this.notification_setting
  depends_on  = [module.memberships, module.repositories, module.settings]
}

output "parent_team_id" {
  description = "The ID or slug of the parent team, if this is a nested team."
  value       = github_team.this.parent_team_id
  depends_on  = [module.memberships, module.repositories, module.settings]
}

output "parent_team_read_id" {
  description = "The id of the parent team read in Github."
  value       = github_team.this.parent_team_read_id
  depends_on  = [module.memberships, module.repositories, module.settings]
}

output "parent_team_read_slug" {
  description = "The id of the parent team read in Github."
  value       = github_team.this.parent_team_read_slug
  depends_on  = [module.memberships, module.repositories, module.settings]
}

output "privacy" {
  description = "The level of privacy for the team. Must be one of 'secret' or 'closed'."
  value       = github_team.this.privacy
  depends_on  = [module.memberships, module.repositories, module.settings]
}

output "repositories" {
  value = module.repositories
}

output "settings" {
  value = one(module.settings)
}

output "slug" {
  description = "The slug of the created team."
  value       = github_team.this.slug
  depends_on  = [module.memberships, module.repositories, module.settings]
}
