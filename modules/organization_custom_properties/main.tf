resource "github_organization_custom_properties" "this" {
  allowed_values     = var.allowed_values
  default_value      = var.default_value
  description        = var.description
  property_name      = var.property_name
  required           = var.required
  value_type         = var.value_type
  values_editable_by = var.values_editable_by
}
