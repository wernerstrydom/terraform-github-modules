output "branch" {
  description = "The branch name, defaults to the repository's default branch"
  value       = github_repository_file.this.branch
}

output "commit_author" {
  description = "The commit author name, defaults to the authenticated user's name. GitHub app users may omit author and email information so GitHub can verify commits as the GitHub App."
  value       = github_repository_file.this.commit_author
}

output "commit_email" {
  description = "The commit author email address, defaults to the authenticated user's email address. GitHub app users may omit author and email information so GitHub can verify commits as the GitHub App."
  value       = github_repository_file.this.commit_email
}

output "commit_message" {
  description = "The commit message when creating, updating or deleting the file"
  value       = github_repository_file.this.commit_message
}

output "commit_sha" {
  description = "The SHA of the commit that modified the file"
  value       = github_repository_file.this.commit_sha
}

output "content" {
  description = "The file's content"
  value       = github_repository_file.this.content
}

output "file" {
  description = "The file path to manage"
  value       = github_repository_file.this.file
}

output "id" {
  value = github_repository_file.this.id
}

output "overwrite_on_create" {
  description = "Enable overwriting existing files, defaults to \"false\""
  value       = github_repository_file.this.overwrite_on_create
}

output "ref" {
  description = "The name of the commit/branch/tag"
  value       = github_repository_file.this.ref
}

output "repository" {
  description = "The repository name"
  value       = github_repository_file.this.repository
}

output "repository_id" {
  description = "The repository ID"
  value       = github_repository_file.this.repository_id
}

output "sha" {
  description = "The blob SHA of the file"
  value       = github_repository_file.this.sha
}
