output "id" {
  value = github_repository_collaborator.this.id
}

output "invitation_id" {
  description = "ID of the invitation to be used in 'github_user_invitation_accepter'"
  value       = github_repository_collaborator.this.invitation_id
}

output "permission" {
  description = "The permission of the outside collaborator for the repository. Must be one of 'pull', 'push', 'maintain', 'triage' or 'admin' or the name of an existing custom repository role within the organization for organization-owned repositories. Must be 'push' for personal repositories. Defaults to 'push'."
  value       = github_repository_collaborator.this.permission
}

output "permission_diff_suppression" {
  description = "Suppress plan diffs for triage and maintain. Defaults to 'false'."
  value       = github_repository_collaborator.this.permission_diff_suppression
}

output "repository" {
  description = "The GitHub repository"
  value       = github_repository_collaborator.this.repository
}

output "username" {
  description = "The user to add to the repository as a collaborator."
  value       = github_repository_collaborator.this.username
}
