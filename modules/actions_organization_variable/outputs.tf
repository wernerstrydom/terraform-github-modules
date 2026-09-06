output "created_at" {
  description = "Date of 'actions_variable' creation."
  value       = github_actions_organization_variable.this.created_at
}

output "id" {
  value = github_actions_organization_variable.this.id
}

output "selected_repository_ids" {
  description = "An array of repository ids that can access the organization variable."
  value       = github_actions_organization_variable.this.selected_repository_ids
}

output "updated_at" {
  description = "Date of 'actions_variable' update."
  value       = github_actions_organization_variable.this.updated_at
}

output "value" {
  description = "Value of the variable."
  value       = github_actions_organization_variable.this.value
}

output "variable_name" {
  description = "Name of the variable."
  value       = github_actions_organization_variable.this.variable_name
}

output "visibility" {
  description = "Configures the access that repositories have to the organization variable. Must be one of 'all', 'private', or 'selected'. 'selected_repository_ids' is required if set to 'selected'."
  value       = github_actions_organization_variable.this.visibility
}
