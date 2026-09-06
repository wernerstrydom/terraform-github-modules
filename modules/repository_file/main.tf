resource "github_repository_file" "this" {
  branch              = var.branch
  commit_author       = var.commit_author
  commit_email        = var.commit_email
  commit_message      = var.commit_message
  content             = var.content
  file                = var.file
  overwrite_on_create = var.overwrite_on_create
  repository          = var.repository
}
