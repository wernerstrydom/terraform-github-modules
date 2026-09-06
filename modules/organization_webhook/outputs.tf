output "active" {
  description = "Indicate if the webhook should receive events."
  value       = github_organization_webhook.this.active
}

output "etag" {
  value = github_organization_webhook.this.etag
}

output "events" {
  description = "A list of events which should trigger the webhook."
  value       = github_organization_webhook.this.events
}

output "id" {
  value = github_organization_webhook.this.id
}

output "url" {
  description = "URL of the webhook."
  value       = github_organization_webhook.this.url
}
