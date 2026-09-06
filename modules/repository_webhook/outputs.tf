output "active" {
  description = "Indicate if the webhook should receive events. Defaults to 'true'."
  value       = github_repository_webhook.this.active
}

output "etag" {
  value = github_repository_webhook.this.etag
}

output "events" {
  description = "A list of events which should trigger the webhook"
  value       = github_repository_webhook.this.events
}

output "id" {
  value = github_repository_webhook.this.id
}

output "repository" {
  description = "The repository name of the webhook, not including the organization, which will be inferred."
  value       = github_repository_webhook.this.repository
}

output "url" {
  description = "Configuration block for the webhook"
  value       = github_repository_webhook.this.url
}
