resource "github_organization_role_team" "this" {
  role_id   = var.role_id
  team_slug = var.team_slug
}
