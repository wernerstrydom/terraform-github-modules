resource "github_actions_organization_workflow_permissions" "this" {
  can_approve_pull_request_reviews = var.can_approve_pull_request_reviews
  default_workflow_permissions     = var.default_workflow_permissions
  organization_slug                = var.organization_slug
}
