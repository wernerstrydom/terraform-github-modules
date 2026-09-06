resource "github_organization_repository_role" "this" {
  base_role   = var.base_role
  description = var.description
  name        = var.name
  permissions = var.permissions
}
