resource "github_actions_organization_secret_repositories" "this" {
  secret_name             = var.secret_name
  selected_repository_ids = var.selected_repository_ids
}
