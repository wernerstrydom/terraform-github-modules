resource "github_actions_secret" "this" {
  key_id          = var.key_id
  repository      = var.repository
  secret_name     = var.secret_name
  value           = var.value
  value_encrypted = var.value_encrypted
}
