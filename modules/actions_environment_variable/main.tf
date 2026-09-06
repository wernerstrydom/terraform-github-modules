resource "github_actions_environment_variable" "this" {
  environment   = var.environment
  repository    = var.repository
  value         = var.value
  variable_name = var.variable_name
}
