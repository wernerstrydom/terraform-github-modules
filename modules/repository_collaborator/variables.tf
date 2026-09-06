variable "permission" {
  description = "The permission of the outside collaborator for the repository. Must be one of 'pull', 'push', 'maintain', 'triage' or 'admin' or the name of an existing custom repository role within the organization for organization-owned repositories. Must be 'push' for personal repositories. Defaults to 'push'."
  type        = string
  default     = null
}

variable "permission_diff_suppression" {
  description = "Suppress plan diffs for triage and maintain. Defaults to 'false'."
  type        = bool
  default     = null
}

variable "repository" {
  description = "The GitHub repository"
  type        = string
}

variable "username" {
  description = "The user to add to the repository as a collaborator."
  type        = string
}
