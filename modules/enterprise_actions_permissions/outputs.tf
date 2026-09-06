output "allowed_actions" {
  description = "The permissions policy that controls the actions that are allowed to run. Can be one of: 'all', 'local_only', or 'selected'."
  value       = github_enterprise_actions_permissions.this.allowed_actions
}

output "enabled_organizations" {
  description = "The policy that controls the organizations in the enterprise that are allowed to run GitHub Actions. Can be one of: 'all', 'none', or 'selected'."
  value       = github_enterprise_actions_permissions.this.enabled_organizations
}

output "enterprise_slug" {
  description = "The slug of the enterprise."
  value       = github_enterprise_actions_permissions.this.enterprise_slug
}

output "id" {
  value = github_enterprise_actions_permissions.this.id
}
