resource "github_repository_dependabot_security_updates" "this" {
  enabled    = var.enabled
  repository = var.repository
}
