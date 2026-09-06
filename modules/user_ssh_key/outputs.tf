output "etag" {
  value = github_user_ssh_key.this.etag
}

output "id" {
  value = github_user_ssh_key.this.id
}

output "key" {
  description = "The public SSH key to add to your GitHub account."
  value       = github_user_ssh_key.this.key
}

output "title" {
  description = "A descriptive name for the new key."
  value       = github_user_ssh_key.this.title
}

output "url" {
  description = "The URL of the SSH key."
  value       = github_user_ssh_key.this.url
}
