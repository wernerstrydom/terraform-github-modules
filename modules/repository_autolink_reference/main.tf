resource "github_repository_autolink_reference" "this" {
  is_alphanumeric     = var.is_alphanumeric
  key_prefix          = var.key_prefix
  repository          = var.repository
  target_url_template = var.target_url_template
}
