resource "github_enterprise_organization" "this" {
  admin_logins  = var.admin_logins
  billing_email = var.billing_email
  description   = var.description
  display_name  = var.display_name
  enterprise_id = var.enterprise_id
  name          = var.name
}
