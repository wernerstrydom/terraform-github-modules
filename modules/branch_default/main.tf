resource "github_branch_default" "this" {
  branch          = var.branch
  etag            = var.etag
  rename          = var.rename
  repository      = var.repository
  wait_for_rename = var.wait_for_rename
}
