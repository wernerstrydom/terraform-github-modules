resource "github_actions_repository_access_level" "this" {
  access_level = var.access_level
  repository   = var.repository
}
