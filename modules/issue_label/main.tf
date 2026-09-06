resource "github_issue_label" "this" {
  color       = var.color
  description = var.description
  etag        = var.etag
  name        = var.name
  repository  = var.repository
}
