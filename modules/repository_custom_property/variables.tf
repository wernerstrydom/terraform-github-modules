variable "property_name" {
  description = "Name of the custom property."
  type        = string
}

variable "property_type" {
  description = "Type of the custom property. Valid values are `string`, `single_select`, `multi_select`, `true_false`, and `url`."
  type        = string
}

variable "property_value" {
  description = "Value of the custom property. For `string`, `single_select`, `true_false`, and `url` property types, this should be a single value. For `multi_select` property types, this can be multiple values."
  type        = set(string)
}

variable "repository" {
  description = "Name of the repository."
  type        = string
}
