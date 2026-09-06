output "armored_public_key" {
  description = "Your public GPG key, generated in ASCII-armored format."
  value       = github_user_gpg_key.this.armored_public_key
}

output "etag" {
  value = github_user_gpg_key.this.etag
}

output "id" {
  value = github_user_gpg_key.this.id
}

output "key_id" {
  description = "The key ID of the GPG key."
  value       = github_user_gpg_key.this.key_id
}
