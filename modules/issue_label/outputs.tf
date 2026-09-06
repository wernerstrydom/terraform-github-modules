output "color" {
  description = "A 6 character hex code, without the leading '#', identifying the color of the label."
  value       = github_issue_label.this.color
}

output "description" {
  description = "A short description of the label."
  value       = github_issue_label.this.description
}

output "etag" {
  value = github_issue_label.this.etag
}

output "id" {
  value = github_issue_label.this.id
}

output "name" {
  description = "The name of the label."
  value       = github_issue_label.this.name
}

output "repository" {
  description = "The GitHub repository."
  value       = github_issue_label.this.repository
}

output "url" {
  description = "The URL to the issue label."
  value       = github_issue_label.this.url
}
