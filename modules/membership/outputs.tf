output "downgrade_on_destroy" {
  description = "Instead of removing the member from the org, you can choose to downgrade their membership to 'member' when this resource is destroyed. This is useful when wanting to downgrade admins while keeping them in the organization"
  value       = github_membership.this.downgrade_on_destroy
}

output "etag" {
  value = github_membership.this.etag
}

output "id" {
  value = github_membership.this.id
}

output "role" {
  description = "The role of the user within the organization. Must be one of 'member' or 'admin'."
  value       = github_membership.this.role
}

output "username" {
  description = "The user to add to the organization."
  value       = github_membership.this.username
}
