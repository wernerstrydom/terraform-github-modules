resource "github_enterprise_actions_runner_group" "this" {
  allows_public_repositories = var.allows_public_repositories
  enterprise_slug            = var.enterprise_slug
  name                       = var.name
  restricted_to_workflows    = var.restricted_to_workflows
  selected_organization_ids  = var.selected_organization_ids
  selected_workflows         = var.selected_workflows
  visibility                 = var.visibility
}
