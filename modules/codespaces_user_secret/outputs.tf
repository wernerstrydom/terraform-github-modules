output "created_at" {
  description = "Date of 'codespaces_secret' creation."
  value       = github_codespaces_user_secret.this.created_at
}

output "encrypted_value" {
  description = "Encrypted value of the secret using the GitHub public key in Base64 format."
  value       = github_codespaces_user_secret.this.encrypted_value
  sensitive   = true
}

output "id" {
  value = github_codespaces_user_secret.this.id
}

output "plaintext_value" {
  description = "Plaintext value of the secret to be encrypted."
  value       = github_codespaces_user_secret.this.plaintext_value
  sensitive   = true
}

output "secret_name" {
  description = "Name of the secret."
  value       = github_codespaces_user_secret.this.secret_name
}

output "selected_repository_ids" {
  description = "An array of repository ids that can access the user secret."
  value       = github_codespaces_user_secret.this.selected_repository_ids
}

output "updated_at" {
  description = "Date of 'codespaces_secret' update."
  value       = github_codespaces_user_secret.this.updated_at
}
