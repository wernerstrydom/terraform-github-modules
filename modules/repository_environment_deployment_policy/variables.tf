variable "branch_pattern" {
  description = "The name pattern that branches must match in order to deploy to the environment."
  type        = string
  default     = null
}

variable "environment" {
  description = "The name of the environment."
  type        = string
}

variable "repository" {
  description = "The name of the GitHub repository."
  type        = string
}

variable "tag_pattern" {
  description = "The name pattern that tags must match in order to deploy to the environment."
  type        = string
  default     = null
}
