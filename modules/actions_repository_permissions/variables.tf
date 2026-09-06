variable "allowed_actions" {
  description = "The permissions policy that controls the actions that are allowed to run. Can be one of: 'all', 'local_only', or 'selected'."
  type        = string
  default     = null
}

variable "enabled" {
  description = "Should GitHub actions be enabled on this repository."
  type        = bool
  default     = null
}

variable "repository" {
  description = "The GitHub repository."
  type        = string
}

variable "sha_pinning_required" {
  description = "Whether pinning to a specific SHA is required for all actions and reusable workflows in a repository."
  type        = bool
  default     = null
}

variable "allowed_actions_config" {
  description = "Sets the actions that are allowed in an repository. Only available when 'allowed_actions' = 'selected'."
  type = object({
    github_owned_allowed = bool
    patterns_allowed     = optional(set(string))
    verified_allowed     = optional(bool)
  })
  default = null
}
