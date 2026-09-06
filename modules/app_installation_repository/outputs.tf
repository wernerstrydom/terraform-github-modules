output "id" {
  value = github_app_installation_repository.this.id
}

output "installation_id" {
  description = "The GitHub app installation id."
  value       = github_app_installation_repository.this.installation_id
}

output "repo_id" {
  value = github_app_installation_repository.this.repo_id
}

output "repository" {
  description = "The repository to install the app on."
  value       = github_app_installation_repository.this.repository
}
