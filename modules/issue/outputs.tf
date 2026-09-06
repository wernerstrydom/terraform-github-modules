output "assignees" {
  description = "List of Logins to assign to the issue."
  value       = github_issue.this.assignees
}

output "body" {
  description = "Body of the issue."
  value       = github_issue.this.body
}

output "etag" {
  value = github_issue.this.etag
}

output "id" {
  value = github_issue.this.id
}

output "issue_id" {
  description = "The issue id."
  value       = github_issue.this.issue_id
}

output "labels" {
  description = "List of labels to attach to the issue."
  value       = github_issue.this.labels
}

output "milestone_number" {
  description = "Milestone number to assign to the issue."
  value       = github_issue.this.milestone_number
}

output "number" {
  description = "The issue number."
  value       = github_issue.this.number
}

output "repository" {
  description = "The GitHub repository name."
  value       = github_issue.this.repository
}

output "title" {
  description = "Title of the issue."
  value       = github_issue.this.title
}
