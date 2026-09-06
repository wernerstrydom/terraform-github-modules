resource "github_app_installation_repository" "this" {
  installation_id = var.installation_id
  repository      = var.repository
}
