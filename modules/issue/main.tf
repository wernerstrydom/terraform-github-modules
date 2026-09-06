resource "github_issue" "this" {
  assignees        = var.assignees
  body             = var.body
  labels           = var.labels
  milestone_number = var.milestone_number
  repository       = var.repository
  title            = var.title
}
