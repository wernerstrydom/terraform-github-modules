variable "allowed_actions" {
  description = "The permissions policy that controls the actions that are allowed to run. Can be one of: 'all', 'local_only', or 'selected'."
  type        = string
  default     = null
}

variable "enabled_repositories" {
  description = "The policy that controls the repositories in the organization that are allowed to run GitHub Actions. Can be one of: 'all', 'none', or 'selected'."
  type        = string
}

variable "sha_pinning_required" {
  description = "Whether pinning to a specific SHA is required for all actions and reusable workflows in an organization."
  type        = bool
  default     = null
}

variable "allowed_actions_config" {
  description = "Sets the actions that are allowed in an organization. Only available when 'allowed_actions' = 'selected'"
  type = object({
    github_owned_allowed = bool
    patterns_allowed     = optional(set(string))
    verified_allowed     = optional(bool)
  })
  default = null
}

variable "enabled_repositories_config" {
  description = "Sets the list of selected repositories that are enabled for GitHub Actions in an organization. Only available when 'enabled_repositories' = 'selected'."
  type = object({
    repository_ids = set(number)
  })
  default = null
}
