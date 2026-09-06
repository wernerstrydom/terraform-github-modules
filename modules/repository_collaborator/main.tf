resource "github_repository_collaborator" "this" {
  permission                  = var.permission
  permission_diff_suppression = var.permission_diff_suppression
  repository                  = var.repository
  username                    = var.username
}
