output "id" {
  value = github_repository_custom_property.this.id
}

output "property_name" {
  description = "Name of the custom property."
  value       = github_repository_custom_property.this.property_name
}

output "property_type" {
  description = "Type of the custom property. Valid values are `string`, `single_select`, `multi_select`, `true_false`, and `url`."
  value       = github_repository_custom_property.this.property_type
}

output "property_value" {
  description = "Value of the custom property. For `string`, `single_select`, `true_false`, and `url` property types, this should be a single value. For `multi_select` property types, this can be multiple values."
  value       = github_repository_custom_property.this.property_value
}

output "repository" {
  description = "Name of the repository."
  value       = github_repository_custom_property.this.repository
}

output "repository_id" {
  description = "ID of the repository."
  value       = github_repository_custom_property.this.repository_id
}
