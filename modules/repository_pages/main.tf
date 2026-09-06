resource "github_repository_pages" "this" {
  build_type     = var.build_type
  cname          = var.cname
  https_enforced = var.https_enforced
  public         = var.public
  repository     = var.repository
}
