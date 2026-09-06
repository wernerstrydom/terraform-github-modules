output "branch" {
  description = "The Git branch to protect."
  value       = github_branch_protection_v3.this.branch
}

output "enforce_admins" {
  description = "Setting this to 'true' enforces status checks for repository administrators."
  value       = github_branch_protection_v3.this.enforce_admins
}

output "etag" {
  value = github_branch_protection_v3.this.etag
}

output "id" {
  value = github_branch_protection_v3.this.id
}

output "repository" {
  description = "The GitHub repository name."
  value       = github_branch_protection_v3.this.repository
}

output "require_conversation_resolution" {
  description = "Setting this to 'true' requires all conversations on code must be resolved before a pull request can be merged."
  value       = github_branch_protection_v3.this.require_conversation_resolution
}

output "require_signed_commits" {
  description = "Setting this to 'true' requires all commits to be signed with GPG."
  value       = github_branch_protection_v3.this.require_signed_commits
}
