output "allows_public_repositories" {
  description = "Whether public repositories can be added to the runner group."
  value       = github_enterprise_actions_runner_group.this.allows_public_repositories
}

output "default" {
  description = "Whether this is the default runner group."
  value       = github_enterprise_actions_runner_group.this.default
}

output "enterprise_slug" {
  description = "The slug of the enterprise."
  value       = github_enterprise_actions_runner_group.this.enterprise_slug
}

output "etag" {
  description = "An etag representing the runner group object"
  value       = github_enterprise_actions_runner_group.this.etag
}

output "id" {
  value = github_enterprise_actions_runner_group.this.id
}

output "name" {
  description = "Name of the runner group."
  value       = github_enterprise_actions_runner_group.this.name
}

output "restricted_to_workflows" {
  description = "If 'true', the runner group will be restricted to running only the workflows specified in the 'selected_workflows' array. Defaults to 'false'."
  value       = github_enterprise_actions_runner_group.this.restricted_to_workflows
}

output "runners_url" {
  description = "The GitHub API URL for the runner group's runners."
  value       = github_enterprise_actions_runner_group.this.runners_url
}

output "selected_organization_ids" {
  description = "List of organization IDs that can access the runner group."
  value       = github_enterprise_actions_runner_group.this.selected_organization_ids
}

output "selected_organizations_url" {
  description = "GitHub API URL for the runner group's organizations."
  value       = github_enterprise_actions_runner_group.this.selected_organizations_url
}

output "selected_workflows" {
  description = "List of workflows the runner group should be allowed to run. This setting will be ignored unless restricted_to_workflows is set to 'true'."
  value       = github_enterprise_actions_runner_group.this.selected_workflows
}

output "visibility" {
  description = "The visibility of the runner group."
  value       = github_enterprise_actions_runner_group.this.visibility
}
