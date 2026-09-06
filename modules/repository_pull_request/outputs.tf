output "base_ref" {
  description = "Name of the branch serving as the base of the Pull Request."
  value       = github_repository_pull_request.this.base_ref
}

output "base_repository" {
  description = "Name of the base repository to retrieve the Pull Requests from."
  value       = github_repository_pull_request.this.base_repository
}

output "base_sha" {
  description = "Head commit SHA of the Pull Request base."
  value       = github_repository_pull_request.this.base_sha
}

output "body" {
  description = "Body of the Pull Request."
  value       = github_repository_pull_request.this.body
}

output "draft" {
  description = "Indicates Whether this Pull Request is a draft."
  value       = github_repository_pull_request.this.draft
}

output "head_ref" {
  description = "Name of the branch serving as the head of the Pull Request."
  value       = github_repository_pull_request.this.head_ref
}

output "head_sha" {
  description = "Head commit SHA of the Pull Request head."
  value       = github_repository_pull_request.this.head_sha
}

output "id" {
  value = github_repository_pull_request.this.id
}

output "labels" {
  description = "List of names of labels on the PR"
  value       = github_repository_pull_request.this.labels
}

output "maintainer_can_modify" {
  description = "Controls whether the base repository maintainers can modify the Pull Request. Default: 'false'."
  value       = github_repository_pull_request.this.maintainer_can_modify
}

output "number" {
  description = "The number of the Pull Request within the repository."
  value       = github_repository_pull_request.this.number
}

output "opened_at" {
  description = "Unix timestamp indicating the Pull Request creation time."
  value       = github_repository_pull_request.this.opened_at
}

output "opened_by" {
  description = "Username of the PR creator"
  value       = github_repository_pull_request.this.opened_by
}

output "owner" {
  description = "Owner of the repository. If not provided, the provider's default owner is used."
  value       = github_repository_pull_request.this.owner
}

output "state" {
  description = "The current Pull Request state - can be 'open', 'closed' or 'merged'."
  value       = github_repository_pull_request.this.state
}

output "title" {
  description = "The title of the Pull Request."
  value       = github_repository_pull_request.this.title
}

output "updated_at" {
  description = "The timestamp of the last Pull Request update."
  value       = github_repository_pull_request.this.updated_at
}
