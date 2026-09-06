output "base_role" {
  description = "The base role for the organization repository role."
  value       = github_organization_repository_role.this.base_role
}

output "description" {
  description = "The description of the organization repository role."
  value       = github_organization_repository_role.this.description
}

output "id" {
  value = github_organization_repository_role.this.id
}

output "name" {
  description = "The name of the organization repository role."
  value       = github_organization_repository_role.this.name
}

output "permissions" {
  description = "The permissions for the organization repository role."
  value       = github_organization_repository_role.this.permissions
}

output "role_id" {
  description = "The ID of the organization repository role."
  value       = github_organization_repository_role.this.role_id
}
