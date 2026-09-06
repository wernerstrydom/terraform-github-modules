output "allowed_actions" {
  description = "The permissions policy that controls the actions that are allowed to run. Can be one of: 'all', 'local_only', or 'selected'."
  value       = github_actions_organization_permissions.this.allowed_actions
}

output "enabled_repositories" {
  description = "The policy that controls the repositories in the organization that are allowed to run GitHub Actions. Can be one of: 'all', 'none', or 'selected'."
  value       = github_actions_organization_permissions.this.enabled_repositories
}

output "id" {
  value = github_actions_organization_permissions.this.id
}

output "sha_pinning_required" {
  description = "Whether pinning to a specific SHA is required for all actions and reusable workflows in an organization."
  value       = github_actions_organization_permissions.this.sha_pinning_required
}
