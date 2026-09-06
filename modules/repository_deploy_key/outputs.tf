output "etag" {
  value = github_repository_deploy_key.this.etag
}

output "id" {
  value = github_repository_deploy_key.this.id
}

output "key" {
  description = "A SSH key."
  value       = github_repository_deploy_key.this.key
}

output "read_only" {
  description = "A boolean qualifying the key to be either read only or read/write."
  value       = github_repository_deploy_key.this.read_only
}

output "repository" {
  description = "Name of the GitHub repository."
  value       = github_repository_deploy_key.this.repository
}

output "title" {
  description = "A title."
  value       = github_repository_deploy_key.this.title
}
