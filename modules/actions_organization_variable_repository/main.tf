resource "github_actions_organization_variable_repository" "this" {
  repository_id = var.repository_id
  variable_name = var.variable_name
}
