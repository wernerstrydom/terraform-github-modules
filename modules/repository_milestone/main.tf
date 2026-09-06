resource "github_repository_milestone" "this" {
  description = var.description
  due_date    = var.due_date
  owner       = var.owner
  repository  = var.repository
  state       = var.state
  title       = var.title
}
