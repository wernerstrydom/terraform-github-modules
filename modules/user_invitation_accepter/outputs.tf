output "allow_empty_id" {
  description = "Allow the ID to be unset. This will result in the resource being skipped when the ID is not set instead of returning an error."
  value       = github_user_invitation_accepter.this.allow_empty_id
}

output "id" {
  value = github_user_invitation_accepter.this.id
}

output "invitation_id" {
  description = "ID of the invitation to accept. Must be set when 'allow_empty_id' is 'false'."
  value       = github_user_invitation_accepter.this.invitation_id
}
