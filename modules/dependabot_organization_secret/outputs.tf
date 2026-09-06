output "created_at" {
  description = "Date of 'dependabot_secret' creation."
  value       = github_dependabot_organization_secret.this.created_at
}

output "id" {
  value = github_dependabot_organization_secret.this.id
}

output "key_id" {
  description = "ID of the public key used to encrypt the secret."
  value       = github_dependabot_organization_secret.this.key_id
}

output "remote_updated_at" {
  description = "Date of secret update at the remote."
  value       = github_dependabot_organization_secret.this.remote_updated_at
}

output "secret_name" {
  description = "Name of the secret."
  value       = github_dependabot_organization_secret.this.secret_name
}

output "updated_at" {
  description = "Date of 'dependabot_secret' update."
  value       = github_dependabot_organization_secret.this.updated_at
}

output "value" {
  description = "Plaintext value to be encrypted."
  value       = github_dependabot_organization_secret.this.value
  sensitive   = true
}

output "value_encrypted" {
  description = "Value encrypted with the GitHub public key, defined by key_id, in Base64 format."
  value       = github_dependabot_organization_secret.this.value_encrypted
  sensitive   = true
}

output "visibility" {
  description = "Configures the access that repositories have to the organization secret. Must be one of 'all', 'private' or 'selected'. 'selected_repository_ids' is required if set to 'selected'."
  value       = github_dependabot_organization_secret.this.visibility
}
