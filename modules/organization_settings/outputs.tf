output "advanced_security_enabled_for_new_repositories" {
  description = "Whether or not advanced security is enabled for new repositories."
  value       = github_organization_settings.this.advanced_security_enabled_for_new_repositories
}

output "billing_email" {
  description = "The billing email address for the organization."
  value       = github_organization_settings.this.billing_email
}

output "blog" {
  description = "The blog URL for the organization."
  value       = github_organization_settings.this.blog
}

output "company" {
  description = "The company name for the organization."
  value       = github_organization_settings.this.company
}

output "default_repository_permission" {
  description = "The default permission for organization members to create new repositories. Can be one of 'read', 'write', 'admin' or 'none'."
  value       = github_organization_settings.this.default_repository_permission
}

output "dependabot_alerts_enabled_for_new_repositories" {
  description = "Whether or not dependabot alerts are enabled for new repositories."
  value       = github_organization_settings.this.dependabot_alerts_enabled_for_new_repositories
}

output "dependabot_security_updates_enabled_for_new_repositories" {
  description = "Whether or not dependabot security updates are enabled for new repositories."
  value       = github_organization_settings.this.dependabot_security_updates_enabled_for_new_repositories
}

output "dependency_graph_enabled_for_new_repositories" {
  description = "Whether or not dependency graph is enabled for new repositories."
  value       = github_organization_settings.this.dependency_graph_enabled_for_new_repositories
}

output "description" {
  description = "The description for the organization."
  value       = github_organization_settings.this.description
}

output "email" {
  description = "The email address for the organization."
  value       = github_organization_settings.this.email
}

output "has_organization_projects" {
  description = "Whether or not organization projects are enabled for the organization."
  value       = github_organization_settings.this.has_organization_projects
}

output "has_repository_projects" {
  description = "Whether or not repository projects are enabled for the organization."
  value       = github_organization_settings.this.has_repository_projects
}

output "id" {
  value = github_organization_settings.this.id
}

output "location" {
  description = "The location for the organization."
  value       = github_organization_settings.this.location
}

output "members_can_create_internal_repositories" {
  description = "Whether or not organization members can create new internal repositories. For Enterprise Organizations only."
  value       = github_organization_settings.this.members_can_create_internal_repositories
}

output "members_can_create_pages" {
  description = "Whether or not organization members can create new pages."
  value       = github_organization_settings.this.members_can_create_pages
}

output "members_can_create_private_pages" {
  description = "Whether or not organization members can create new private pages."
  value       = github_organization_settings.this.members_can_create_private_pages
}

output "members_can_create_private_repositories" {
  description = "Whether or not organization members can create new private repositories."
  value       = github_organization_settings.this.members_can_create_private_repositories
}

output "members_can_create_public_pages" {
  description = "Whether or not organization members can create new public pages."
  value       = github_organization_settings.this.members_can_create_public_pages
}

output "members_can_create_public_repositories" {
  description = "Whether or not organization members can create new public repositories."
  value       = github_organization_settings.this.members_can_create_public_repositories
}

output "members_can_create_repositories" {
  description = "Whether or not organization members can create new repositories."
  value       = github_organization_settings.this.members_can_create_repositories
}

output "members_can_fork_private_repositories" {
  description = "Whether or not organization members can fork private repositories."
  value       = github_organization_settings.this.members_can_fork_private_repositories
}

output "name" {
  description = "The name for the organization."
  value       = github_organization_settings.this.name
}

output "secret_scanning_enabled_for_new_repositories" {
  description = "Whether or not secret scanning is enabled for new repositories."
  value       = github_organization_settings.this.secret_scanning_enabled_for_new_repositories
}

output "secret_scanning_push_protection_enabled_for_new_repositories" {
  description = "Whether or not secret scanning push protection is enabled for new repositories."
  value       = github_organization_settings.this.secret_scanning_push_protection_enabled_for_new_repositories
}

output "twitter_username" {
  description = "The Twitter username for the organization."
  value       = github_organization_settings.this.twitter_username
}

output "web_commit_signoff_required" {
  description = "Whether or not commit signatures are required for commits to the organization."
  value       = github_organization_settings.this.web_commit_signoff_required
}
