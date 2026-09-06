variable "enabled" {
  description = "The state of the automated security fixes."
  type        = bool
}

variable "repository" {
  description = "The GitHub repository."
  type        = string
}
