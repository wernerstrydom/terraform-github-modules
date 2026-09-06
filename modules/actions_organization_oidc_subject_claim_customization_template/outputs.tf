output "id" {
  value = github_actions_organization_oidc_subject_claim_customization_template.this.id
}

output "include_claim_keys" {
  description = "A list of OpenID Connect claims."
  value       = github_actions_organization_oidc_subject_claim_customization_template.this.include_claim_keys
}
