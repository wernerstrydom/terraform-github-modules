output "enabled" {
  description = "The state of the automated security fixes."
  value       = github_repository_dependabot_security_updates.this.enabled
}

output "id" {
  value = github_repository_dependabot_security_updates.this.id
}

output "repository" {
  description = "The GitHub repository."
  value       = github_repository_dependabot_security_updates.this.repository
}
