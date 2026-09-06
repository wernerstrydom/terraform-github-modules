output "created_at" {
  description = "Date of 'actions_variable' creation."
  value       = github_actions_variable.this.created_at
}

output "id" {
  value = github_actions_variable.this.id
}

output "repository" {
  description = "Name of the repository."
  value       = github_actions_variable.this.repository
}

output "repository_id" {
  description = "ID of the repository."
  value       = github_actions_variable.this.repository_id
}

output "updated_at" {
  description = "Date of 'actions_variable' update."
  value       = github_actions_variable.this.updated_at
}

output "value" {
  description = "Value of the variable."
  value       = github_actions_variable.this.value
}

output "variable_name" {
  description = "Name of the variable."
  value       = github_actions_variable.this.variable_name
}
