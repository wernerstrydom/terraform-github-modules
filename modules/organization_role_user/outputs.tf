output "id" {
  value = github_organization_role_user.this.id
}

output "login" {
  description = "The login for the GitHub user account."
  value       = github_organization_role_user.this.login
}

output "role_id" {
  description = "The unique identifier of the organization role."
  value       = github_organization_role_user.this.role_id
}
