variable "repository_id" {
  description = "The repository ID that can access the organization secret."
  type        = number
}

variable "secret_name" {
  description = "Name of the existing secret."
  type        = string
}
