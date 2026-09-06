resource "github_repository_custom_property" "this" {
  property_name  = var.property_name
  property_type  = var.property_type
  property_value = var.property_value
  repository     = var.repository
}
