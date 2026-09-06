resource "github_organization_role_user" "this" {
  login   = var.login
  role_id = var.role_id
}
