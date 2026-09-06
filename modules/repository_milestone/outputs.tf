output "description" {
  description = "A description of the milestone."
  value       = github_repository_milestone.this.description
}

output "due_date" {
  description = "The milestone due date. In 'yyyy-mm-dd' format."
  value       = github_repository_milestone.this.due_date
}

output "id" {
  value = github_repository_milestone.this.id
}

output "number" {
  description = "The number of the milestone."
  value       = github_repository_milestone.this.number
}

output "owner" {
  description = "The owner of the GitHub Repository."
  value       = github_repository_milestone.this.owner
}

output "repository" {
  description = "The name of the GitHub Repository."
  value       = github_repository_milestone.this.repository
}

output "state" {
  description = "The state of the milestone. Either 'open' or 'closed'. Default: 'open'."
  value       = github_repository_milestone.this.state
}

output "title" {
  description = "The title of the milestone."
  value       = github_repository_milestone.this.title
}
