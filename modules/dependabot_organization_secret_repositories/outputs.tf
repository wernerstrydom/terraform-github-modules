output "id" {
  value = github_dependabot_organization_secret_repositories.this.id
}

output "secret_name" {
  description = "Name of the existing secret."
  value       = github_dependabot_organization_secret_repositories.this.secret_name
}

output "selected_repository_ids" {
  description = "An array of repository ids that can access the organization secret."
  value       = github_dependabot_organization_secret_repositories.this.selected_repository_ids
}
