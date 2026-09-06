output "allowed_values" {
  description = "The allowed values of the custom property"
  value       = github_organization_custom_properties.this.allowed_values
}

output "default_value" {
  description = "The default value of the custom property"
  value       = github_organization_custom_properties.this.default_value
}

output "description" {
  description = "The description of the custom property"
  value       = github_organization_custom_properties.this.description
}

output "id" {
  value = github_organization_custom_properties.this.id
}

output "property_name" {
  description = "The name of the custom property"
  value       = github_organization_custom_properties.this.property_name
}

output "required" {
  description = "Whether the custom property is required"
  value       = github_organization_custom_properties.this.required
}

output "value_type" {
  description = "The type of the custom property"
  value       = github_organization_custom_properties.this.value_type
}

output "values_editable_by" {
  description = "Who can edit the values of the custom property. Can be one of 'org_actors' or 'org_and_repo_actors'. If not specified, the default is 'org_actors' (only organization owners can edit values)"
  value       = github_organization_custom_properties.this.values_editable_by
}
