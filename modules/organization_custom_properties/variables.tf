variable "allowed_values" {
  description = "The allowed values of the custom property"
  type        = list(string)
  default     = null
}

variable "default_value" {
  description = "The default value of the custom property"
  type        = string
  default     = null
}

variable "description" {
  description = "The description of the custom property"
  type        = string
  default     = null
}

variable "property_name" {
  description = "The name of the custom property"
  type        = string
}

variable "required" {
  description = "Whether the custom property is required"
  type        = bool
  default     = null
}

variable "value_type" {
  description = "The type of the custom property"
  type        = string
  default     = null
}

variable "values_editable_by" {
  description = "Who can edit the values of the custom property. Can be one of 'org_actors' or 'org_and_repo_actors'. If not specified, the default is 'org_actors' (only organization owners can edit values)"
  type        = string
  default     = null
}
