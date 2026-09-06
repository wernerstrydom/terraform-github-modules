output "id" {
  value = github_app_installation_repositories.this.id
}

output "installation_id" {
  description = "The GitHub app installation id."
  value       = github_app_installation_repositories.this.installation_id
}

output "selected_repositories" {
  description = "A list of repository names to install the app on."
  value       = github_app_installation_repositories.this.selected_repositories
}
