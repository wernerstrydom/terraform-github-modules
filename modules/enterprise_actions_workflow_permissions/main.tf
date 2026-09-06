resource "github_enterprise_actions_workflow_permissions" "this" {
  can_approve_pull_request_reviews = var.can_approve_pull_request_reviews
  default_workflow_permissions     = var.default_workflow_permissions
  enterprise_slug                  = var.enterprise_slug
}
