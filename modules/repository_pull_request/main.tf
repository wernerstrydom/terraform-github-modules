resource "github_repository_pull_request" "this" {
  base_ref              = var.base_ref
  base_repository       = var.base_repository
  body                  = var.body
  head_ref              = var.head_ref
  maintainer_can_modify = var.maintainer_can_modify
  owner                 = var.owner
  title                 = var.title
}
