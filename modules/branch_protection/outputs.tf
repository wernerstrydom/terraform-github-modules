output "allows_deletions" {
  description = "Setting this to 'true' to allow the branch to be deleted."
  value       = github_branch_protection.this.allows_deletions
}

output "allows_force_pushes" {
  description = "Setting this to 'true' to allow force pushes on the branch."
  value       = github_branch_protection.this.allows_force_pushes
}

output "enforce_admins" {
  description = "Setting this to 'true' enforces status checks for repository administrators."
  value       = github_branch_protection.this.enforce_admins
}

output "force_push_bypassers" {
  description = "The list of actor Names/IDs that are allowed to bypass force push restrictions. Actor names must either begin with a '/' for users or the organization name followed by a '/' for teams."
  value       = github_branch_protection.this.force_push_bypassers
}

output "id" {
  value = github_branch_protection.this.id
}

output "lock_branch" {
  description = "Setting this to 'true' will make the branch read-only and preventing any pushes to it."
  value       = github_branch_protection.this.lock_branch
}

output "pattern" {
  description = "Identifies the protection rule pattern."
  value       = github_branch_protection.this.pattern
}

output "repository_id" {
  description = "The name or node ID of the repository associated with this branch protection rule."
  value       = github_branch_protection.this.repository_id
}

output "require_conversation_resolution" {
  description = "Setting this to 'true' requires all conversations on code must be resolved before a pull request can be merged."
  value       = github_branch_protection.this.require_conversation_resolution
}

output "require_signed_commits" {
  description = "Setting this to 'true' requires all commits to be signed with GPG."
  value       = github_branch_protection.this.require_signed_commits
}

output "required_linear_history" {
  description = "Setting this to 'true' enforces a linear commit Git history, which prevents anyone from pushing merge commits to a branch."
  value       = github_branch_protection.this.required_linear_history
}
