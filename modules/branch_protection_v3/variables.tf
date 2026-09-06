variable "branch" {
  description = "The Git branch to protect."
  type        = string
}

variable "enforce_admins" {
  description = "Setting this to 'true' enforces status checks for repository administrators."
  type        = bool
  default     = null
}

variable "repository" {
  description = "The GitHub repository name."
  type        = string
}

variable "require_conversation_resolution" {
  description = "Setting this to 'true' requires all conversations on code must be resolved before a pull request can be merged."
  type        = bool
  default     = null
}

variable "require_signed_commits" {
  description = "Setting this to 'true' requires all commits to be signed with GPG."
  type        = bool
  default     = null
}

variable "required_pull_request_reviews" {
  description = "Enforce restrictions for pull request reviews."
  type = object({
    dismiss_stale_reviews           = optional(bool)
    dismissal_apps                  = optional(set(string))
    dismissal_teams                 = optional(set(string))
    dismissal_users                 = optional(set(string))
    require_code_owner_reviews      = optional(bool)
    require_last_push_approval      = optional(bool)
    required_approving_review_count = optional(number)
    bypass_pull_request_allowances = optional(object({
      apps  = optional(set(string))
      teams = optional(set(string))
      users = optional(set(string))
    }))
  })
  default = null
}

variable "required_status_checks" {
  description = "Enforce restrictions for required status checks."
  type = object({
    checks = optional(set(string))
    strict = optional(bool)
  })
  default = null
}

variable "restrictions" {
  description = "Enforce restrictions for the users and teams that may push to the branch."
  type = object({
    apps  = optional(set(string))
    teams = optional(set(string))
    users = optional(set(string))
  })
  default = null
}
