variable "allowed_actions" {
  description = "The permissions policy that controls the actions that are allowed to run. Can be one of: 'all', 'local_only', or 'selected'."
  type        = string
  default     = null
}

variable "enabled_organizations" {
  description = "The policy that controls the organizations in the enterprise that are allowed to run GitHub Actions. Can be one of: 'all', 'none', or 'selected'."
  type        = string
}

variable "enterprise_slug" {
  description = "The slug of the enterprise."
  type        = string
}

variable "allowed_actions_config" {
  description = "Sets the actions that are allowed in an enterprise. Only available when 'allowed_actions' = 'selected'"
  type = object({
    github_owned_allowed = bool
    patterns_allowed     = optional(set(string))
    verified_allowed     = optional(bool)
  })
  default = null
}

variable "enabled_organizations_config" {
  description = "Sets the list of selected organizations that are enabled for GitHub Actions in an enterprise. Only available when 'enabled_organizations' = 'selected'."
  type = object({
    organization_ids = set(number)
  })
  default = null
}
