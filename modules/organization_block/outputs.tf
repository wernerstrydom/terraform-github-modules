output "etag" {
  value = github_organization_block.this.etag
}

output "id" {
  value = github_organization_block.this.id
}

output "username" {
  description = "The name of the user to block."
  value       = github_organization_block.this.username
}
