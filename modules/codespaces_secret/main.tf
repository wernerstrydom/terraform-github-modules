resource "github_codespaces_secret" "this" {
  encrypted_value = var.encrypted_value
  plaintext_value = var.plaintext_value
  repository      = var.repository
  secret_name     = var.secret_name
}
