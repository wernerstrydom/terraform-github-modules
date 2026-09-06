output "can_approve_pull_request_reviews" {
  description = "Whether GitHub Actions can approve pull request reviews in any repository in the organization."
  value       = github_actions_organization_workflow_permissions.this.can_approve_pull_request_reviews
}

output "default_workflow_permissions" {
  description = "The default workflow permissions granted to the GITHUB_TOKEN when running workflows in any repository in the organization. Can be 'read' or 'write'."
  value       = github_actions_organization_workflow_permissions.this.default_workflow_permissions
}

output "id" {
  value = github_actions_organization_workflow_permissions.this.id
}

output "organization_slug" {
  description = "The slug of the Organization."
  value       = github_actions_organization_workflow_permissions.this.organization_slug
}
