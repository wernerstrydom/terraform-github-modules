resource "github_membership" "this" {
  downgrade_on_destroy = var.downgrade_on_destroy
  role                 = var.role
  username             = var.username
}
