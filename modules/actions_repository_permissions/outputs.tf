output "allowed_actions" {
  description = "The permissions policy that controls the actions that are allowed to run. Can be one of: 'all', 'local_only', or 'selected'."
  value       = github_actions_repository_permissions.this.allowed_actions
}

output "enabled" {
  description = "Should GitHub actions be enabled on this repository."
  value       = github_actions_repository_permissions.this.enabled
}

output "id" {
  value = github_actions_repository_permissions.this.id
}

output "repository" {
  description = "The GitHub repository."
  value       = github_actions_repository_permissions.this.repository
}

output "sha_pinning_required" {
  description = "Whether pinning to a specific SHA is required for all actions and reusable workflows in a repository."
  value       = github_actions_repository_permissions.this.sha_pinning_required
}
