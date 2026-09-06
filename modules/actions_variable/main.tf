resource "github_actions_variable" "this" {
  repository    = var.repository
  value         = var.value
  variable_name = var.variable_name
}
