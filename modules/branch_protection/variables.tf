variable "allows_deletions" {
  description = "Setting this to 'true' to allow the branch to be deleted."
  type        = bool
  default     = null
}

variable "allows_force_pushes" {
  description = "Setting this to 'true' to allow force pushes on the branch."
  type        = bool
  default     = null
}

variable "enforce_admins" {
  description = "Setting this to 'true' enforces status checks for repository administrators."
  type        = bool
  default     = null
}

variable "force_push_bypassers" {
  description = "The list of actor Names/IDs that are allowed to bypass force push restrictions. Actor names must either begin with a '/' for users or the organization name followed by a '/' for teams."
  type        = set(string)
  default     = null
}

variable "lock_branch" {
  description = "Setting this to 'true' will make the branch read-only and preventing any pushes to it."
  type        = bool
  default     = null
}

variable "pattern" {
  description = "Identifies the protection rule pattern."
  type        = string
}

variable "repository_id" {
  description = "The name or node ID of the repository associated with this branch protection rule."
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

variable "required_linear_history" {
  description = "Setting this to 'true' enforces a linear commit Git history, which prevents anyone from pushing merge commits to a branch."
  type        = bool
  default     = null
}

variable "required_pull_request_reviews" {
  description = "Enforce restrictions for pull request reviews."
  type = list(object({
    dismiss_stale_reviews           = optional(bool)
    dismissal_restrictions          = optional(set(string))
    pull_request_bypassers          = optional(set(string))
    require_code_owner_reviews      = optional(bool)
    require_last_push_approval      = optional(bool)
    required_approving_review_count = optional(number)
    restrict_dismissals             = optional(bool)
  }))
  default = null
}

variable "required_status_checks" {
  description = "Enforce restrictions for required status checks."
  type = list(object({
    contexts = optional(set(string))
    strict   = optional(bool)
  }))
  default = null
}

variable "restrict_pushes" {
  description = "Restrict who can push to matching branches."
  type = list(object({
    blocks_creations = optional(bool)
    push_allowances  = optional(set(string))
  }))
  default = null
}
