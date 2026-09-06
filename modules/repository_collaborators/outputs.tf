output "id" {
  value = github_repository_collaborators.this.id
}

output "invitation_ids" {
  description = "Map of usernames to invitation ID for users that haven't yet accepted their invitation to become a collaborator. This is only set on read, and is used internally to track pending invitations for users that aren't yet collaborators."
  value       = github_repository_collaborators.this.invitation_ids
}

output "owner_configured" {
  description = "Indicates whether the owner of a personal repository is configured as a collaborator."
  value       = github_repository_collaborators.this.owner_configured
}

output "repository" {
  description = "Name of the repository."
  value       = github_repository_collaborators.this.repository
}

output "repository_id" {
  description = "ID of the repository."
  value       = github_repository_collaborators.this.repository_id
}
