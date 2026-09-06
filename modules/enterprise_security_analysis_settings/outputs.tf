output "advanced_security_enabled_for_new_repositories" {
  description = "Whether GitHub Advanced Security is automatically enabled for new repositories."
  value       = github_enterprise_security_analysis_settings.this.advanced_security_enabled_for_new_repositories
}

output "enterprise_slug" {
  description = "The slug of the enterprise."
  value       = github_enterprise_security_analysis_settings.this.enterprise_slug
}

output "id" {
  value = github_enterprise_security_analysis_settings.this.id
}

output "secret_scanning_enabled_for_new_repositories" {
  description = "Whether secret scanning is automatically enabled for new repositories."
  value       = github_enterprise_security_analysis_settings.this.secret_scanning_enabled_for_new_repositories
}

output "secret_scanning_push_protection_custom_link" {
  description = "Custom URL for secret scanning push protection bypass instructions."
  value       = github_enterprise_security_analysis_settings.this.secret_scanning_push_protection_custom_link
}

output "secret_scanning_push_protection_enabled_for_new_repositories" {
  description = "Whether secret scanning push protection is automatically enabled for new repositories."
  value       = github_enterprise_security_analysis_settings.this.secret_scanning_push_protection_enabled_for_new_repositories
}

output "secret_scanning_validity_checks_enabled" {
  description = "Whether secret scanning validity checks are enabled."
  value       = github_enterprise_security_analysis_settings.this.secret_scanning_validity_checks_enabled
}
