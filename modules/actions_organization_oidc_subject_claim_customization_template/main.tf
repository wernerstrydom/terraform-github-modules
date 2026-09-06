resource "github_actions_organization_oidc_subject_claim_customization_template" "this" {
  include_claim_keys = var.include_claim_keys
}
