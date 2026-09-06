variable "can_approve_pull_request_reviews" {
  description = "Whether GitHub Actions can approve pull requests. Enabling this can be a security risk."
  type        = bool
  default     = null
}

variable "default_workflow_permissions" {
  description = "The default workflow permissions granted to the GITHUB_TOKEN when running workflows."
  type        = string
  default     = null
}

variable "repository" {
  description = "The GitHub repository."
  type        = string
}
