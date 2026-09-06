output "branch" {
  description = "The name of the branch to set as the default (e.g. 'main')."
  value       = github_branch_default.this.branch
}

output "etag" {
  description = "The ETag header for the repository API response."
  value       = github_branch_default.this.etag
}

output "id" {
  value = github_branch_default.this.id
}

output "rename" {
  description = "If `true` rename the existing branch when the `branch` input is changed. Defaults to 'false'."
  value       = github_branch_default.this.rename
}

output "repository" {
  description = "The name of the GitHub repository."
  value       = github_branch_default.this.repository
}

output "repository_id" {
  description = "The ID of the GitHub repository."
  value       = github_branch_default.this.repository_id
}

output "wait_for_rename" {
  description = "If `true`, poll until GitHub propagates the renamed default branch before proceeding. Only has effect when `rename` is also `true`. Defaults to 'false'."
  value       = github_branch_default.this.wait_for_rename
}
