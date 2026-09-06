variable "secret_name" {
  description = "Name of the existing secret."
  type        = string
}

variable "selected_repository_ids" {
  description = "An array of repository ids that can access the organization secret."
  type        = set(number)
}
