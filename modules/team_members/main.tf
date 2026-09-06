resource "github_team_members" "this" {
  team_slug = var.team_slug

  dynamic "members" {
    for_each = var.members == null ? [] : var.members
    content {
      role     = members.value.role
      username = members.value.username
    }
  }
}
