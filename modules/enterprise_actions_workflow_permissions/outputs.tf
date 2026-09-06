output "can_approve_pull_request_reviews" {
  description = "Whether GitHub Actions can approve pull request reviews."
  value       = github_enterprise_actions_workflow_permissions.this.can_approve_pull_request_reviews
}

output "default_workflow_permissions" {
  description = "The default workflow permissions granted to the GITHUB_TOKEN when running workflows. Can be 'read' or 'write'."
  value       = github_enterprise_actions_workflow_permissions.this.default_workflow_permissions
}

output "enterprise_slug" {
  description = "The slug of the enterprise."
  value       = github_enterprise_actions_workflow_permissions.this.enterprise_slug
}

output "id" {
  value = github_enterprise_actions_workflow_permissions.this.id
}
