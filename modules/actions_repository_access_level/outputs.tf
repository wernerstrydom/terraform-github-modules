output "access_level" {
  description = "Where the actions or reusable workflows of the repository may be used. Possible values are 'none', 'user', 'organization', or 'enterprise'."
  value       = github_actions_repository_access_level.this.access_level
}

output "id" {
  value = github_actions_repository_access_level.this.id
}

output "repository" {
  description = "The GitHub repository."
  value       = github_actions_repository_access_level.this.repository
}
