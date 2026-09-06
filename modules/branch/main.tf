resource "github_branch" "this" {
  branch        = var.branch
  etag          = var.etag
  repository    = var.repository
  source_branch = var.source_branch
  source_sha    = var.source_sha
}
