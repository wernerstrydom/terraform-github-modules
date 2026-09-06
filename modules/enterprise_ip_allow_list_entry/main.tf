resource "github_enterprise_ip_allow_list_entry" "this" {
  enterprise_slug = var.enterprise_slug
  ip              = var.ip
  is_active       = var.is_active
  name            = var.name
}
