resource "github_dependabot_organization_secret" "this" {
  key_id          = var.key_id
  secret_name     = var.secret_name
  value           = var.value
  value_encrypted = var.value_encrypted
  visibility      = var.visibility
}
