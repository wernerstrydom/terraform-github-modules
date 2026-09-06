resource "github_repository_environment_deployment_policy" "this" {
  branch_pattern = var.branch_pattern
  environment    = var.environment
  repository     = var.repository
  tag_pattern    = var.tag_pattern
}
