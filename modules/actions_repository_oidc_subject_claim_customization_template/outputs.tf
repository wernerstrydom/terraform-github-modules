output "id" {
  value = github_actions_repository_oidc_subject_claim_customization_template.this.id
}

output "include_claim_keys" {
  description = "A list of OpenID Connect claims."
  value       = github_actions_repository_oidc_subject_claim_customization_template.this.include_claim_keys
}

output "repository" {
  description = "The name of the repository."
  value       = github_actions_repository_oidc_subject_claim_customization_template.this.repository
}

output "use_default" {
  description = "Whether to use the default template or not. If 'true', 'include_claim_keys' must not be set."
  value       = github_actions_repository_oidc_subject_claim_customization_template.this.use_default
}
