resource "github_workflow_repository_permissions" "this" {
  can_approve_pull_request_reviews = var.can_approve_pull_request_reviews
  default_workflow_permissions     = var.default_workflow_permissions
  repository                       = var.repository
}
