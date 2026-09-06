output "id" {
  value = github_actions_organization_variable_repositories.this.id
}

output "selected_repository_ids" {
  description = "An array of repository ids that can access the organization variable."
  value       = github_actions_organization_variable_repositories.this.selected_repository_ids
}

output "variable_name" {
  description = "Name of the existing variable."
  value       = github_actions_organization_variable_repositories.this.variable_name
}
