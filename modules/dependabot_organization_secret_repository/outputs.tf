output "id" {
  value = github_dependabot_organization_secret_repository.this.id
}

output "repository_id" {
  description = "The repository ID that can access the organization secret."
  value       = github_dependabot_organization_secret_repository.this.repository_id
}

output "secret_name" {
  description = "Name of the existing secret."
  value       = github_dependabot_organization_secret_repository.this.secret_name
}
