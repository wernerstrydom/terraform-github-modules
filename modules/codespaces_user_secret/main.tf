resource "github_codespaces_user_secret" "this" {
  encrypted_value         = var.encrypted_value
  plaintext_value         = var.plaintext_value
  secret_name             = var.secret_name
  selected_repository_ids = var.selected_repository_ids
}
