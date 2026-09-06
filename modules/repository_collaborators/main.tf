resource "github_repository_collaborators" "this" {
  repository = var.repository

  dynamic "ignore_team" {
    for_each = var.ignore_team == null ? [] : var.ignore_team
    content {
      team_id = ignore_team.value.team_id
    }
  }

  dynamic "team" {
    for_each = var.team == null ? [] : var.team
    content {
      permission = team.value.permission
      team_id    = team.value.team_id
    }
  }

  dynamic "user" {
    for_each = var.user == null ? [] : var.user
    content {
      permission = user.value.permission
      username   = user.value.username
    }
  }
}
