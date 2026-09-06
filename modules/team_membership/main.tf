resource "github_team_membership" "this" {
  role     = var.role
  team_id  = var.team_id
  username = var.username
}
