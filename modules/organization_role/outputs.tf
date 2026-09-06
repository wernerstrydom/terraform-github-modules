output "base_role" {
  description = "The system role from which this role inherits permissions."
  value       = github_organization_role.this.base_role
}

output "description" {
  description = "The description of the organization role."
  value       = github_organization_role.this.description
}

output "id" {
  value = github_organization_role.this.id
}

output "name" {
  description = "The name of the organization role."
  value       = github_organization_role.this.name
}

output "permissions" {
  description = "The permissions for the organization role."
  value       = github_organization_role.this.permissions
}

output "role_id" {
  description = "The ID of the organization role."
  value       = github_organization_role.this.role_id
}
