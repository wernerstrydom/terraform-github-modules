resource "github_dependabot_organization_secret_repository" "this" {
  repository_id = var.repository_id
  secret_name   = var.secret_name
}
