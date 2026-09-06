output "admin_logins" {
  description = "List of organization owner usernames."
  value       = github_enterprise_organization.this.admin_logins
}

output "billing_email" {
  description = "The billing email address."
  value       = github_enterprise_organization.this.billing_email
}

output "database_id" {
  description = "The database ID of the organization."
  value       = github_enterprise_organization.this.database_id
}

output "description" {
  description = "The description of the organization."
  value       = github_enterprise_organization.this.description
}

output "display_name" {
  description = "The display name of the organization."
  value       = github_enterprise_organization.this.display_name
}

output "enterprise_id" {
  description = "The ID of the enterprise."
  value       = github_enterprise_organization.this.enterprise_id
}

output "id" {
  description = "The node ID of the organization."
  value       = github_enterprise_organization.this.id
}

output "name" {
  description = "The name of the organization."
  value       = github_enterprise_organization.this.name
}
