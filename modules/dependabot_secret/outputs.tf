output "created_at" {
  description = "Date of secret creation."
  value       = github_dependabot_secret.this.created_at
}

output "id" {
  value = github_dependabot_secret.this.id
}

output "key_id" {
  description = "ID of the public key used to encrypt the secret."
  value       = github_dependabot_secret.this.key_id
}

output "remote_updated_at" {
  description = "Date of secret update at the remote."
  value       = github_dependabot_secret.this.remote_updated_at
}

output "repository" {
  description = "Name of the repository."
  value       = github_dependabot_secret.this.repository
}

output "repository_id" {
  description = "ID of the repository."
  value       = github_dependabot_secret.this.repository_id
}

output "secret_name" {
  description = "Name of the secret."
  value       = github_dependabot_secret.this.secret_name
}

output "updated_at" {
  description = "Date of secret update."
  value       = github_dependabot_secret.this.updated_at
}

output "value" {
  description = "Plaintext value to be encrypted."
  value       = github_dependabot_secret.this.value
  sensitive   = true
}

output "value_encrypted" {
  description = "Value encrypted with the GitHub public key, defined by key_id, in Base64 format."
  value       = github_dependabot_secret.this.value_encrypted
  sensitive   = true
}
