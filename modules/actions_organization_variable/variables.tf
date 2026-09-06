variable "selected_repository_ids" {
  description = "An array of repository ids that can access the organization variable."
  type        = set(number)
  default     = null
}

variable "value" {
  description = "Value of the variable."
  type        = string
}

variable "variable_name" {
  description = "Name of the variable."
  type        = string
}

variable "visibility" {
  description = "Configures the access that repositories have to the organization variable. Must be one of 'all', 'private', or 'selected'. 'selected_repository_ids' is required if set to 'selected'."
  type        = string
}
