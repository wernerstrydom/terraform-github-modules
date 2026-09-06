variable "selected_repository_ids" {
  description = "An array of repository ids that can access the organization variable."
  type        = set(number)
}

variable "variable_name" {
  description = "Name of the existing variable."
  type        = string
}
