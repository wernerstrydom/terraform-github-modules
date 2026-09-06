output "branch" {
  description = "The repository branch to create."
  value       = github_branch.this.branch
}

output "etag" {
  description = "An etag representing the Branch object."
  value       = github_branch.this.etag
}

output "id" {
  value = github_branch.this.id
}

output "ref" {
  description = "A string representing a branch reference, in the form of 'refs/heads/<branch>'."
  value       = github_branch.this.ref
}

output "repository" {
  description = "The GitHub repository name."
  value       = github_branch.this.repository
}

output "sha" {
  description = "A string storing the reference's HEAD commit's SHA1."
  value       = github_branch.this.sha
}

output "source_branch" {
  description = "The branch name to start from. Defaults to 'main'."
  value       = github_branch.this.source_branch
}

output "source_sha" {
  description = "The commit hash to start from. Defaults to the tip of 'source_branch'. If provided, 'source_branch' is ignored."
  value       = github_branch.this.source_sha
}
