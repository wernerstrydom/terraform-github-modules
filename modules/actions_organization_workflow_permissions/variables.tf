variable "can_approve_pull_request_reviews" {
  description = "Whether GitHub Actions can approve pull request reviews in any repository in the organization."
  type        = bool
  default     = null
}

variable "default_workflow_permissions" {
  description = "The default workflow permissions granted to the GITHUB_TOKEN when running workflows in any repository in the organization. Can be 'read' or 'write'."
  type        = string
  default     = null
}

variable "organization_slug" {
  description = "The slug of the Organization."
  type        = string
}
