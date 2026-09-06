resource "github_actions_organization_variable_repositories" "this" {
  selected_repository_ids = var.selected_repository_ids
  variable_name           = var.variable_name
}
