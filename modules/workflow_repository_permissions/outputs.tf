output "can_approve_pull_request_reviews" {
  description = "Whether GitHub Actions can approve pull requests. Enabling this can be a security risk."
  value       = github_workflow_repository_permissions.this.can_approve_pull_request_reviews
}

output "default_workflow_permissions" {
  description = "The default workflow permissions granted to the GITHUB_TOKEN when running workflows."
  value       = github_workflow_repository_permissions.this.default_workflow_permissions
}

output "id" {
  value = github_workflow_repository_permissions.this.id
}

output "repository" {
  description = "The GitHub repository."
  value       = github_workflow_repository_permissions.this.repository
}
