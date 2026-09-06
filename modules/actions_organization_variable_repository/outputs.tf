output "id" {
  value = github_actions_organization_variable_repository.this.id
}

output "repository_id" {
  description = "The repository ID that can access the organization variable."
  value       = github_actions_organization_variable_repository.this.repository_id
}

output "variable_name" {
  description = "Name of the existing variable."
  value       = github_actions_organization_variable_repository.this.variable_name
}
