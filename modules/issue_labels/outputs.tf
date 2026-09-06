output "id" {
  value = github_issue_labels.this.id
}

output "repository" {
  description = "The GitHub repository."
  value       = github_issue_labels.this.repository
}
