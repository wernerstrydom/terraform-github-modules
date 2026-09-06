variable "description" {
  description = "A description of the team."
  type        = string
  default     = null
}

variable "ldap_dn" {
  description = "The LDAP Distinguished Name of the group where membership will be synchronized. Only available in GitHub Enterprise Server."
  type        = string
  default     = null
}

variable "name" {
  description = "The name of the team."
  type        = string
}

variable "notification_setting" {
  description = "The notification setting for the team. Must be one of 'notifications_enabled' or 'notifications_disabled'."
  type        = string
  default     = null
}

variable "parent_team_id" {
  description = "The ID or slug of the parent team, if this is a nested team."
  type        = string
  default     = null
}

variable "parent_team_read_id" {
  description = "The id of the parent team read in Github."
  type        = string
  default     = null
}

variable "parent_team_read_slug" {
  description = "The id of the parent team read in Github."
  type        = string
  default     = null
}

variable "privacy" {
  description = "The level of privacy for the team. Must be one of 'secret' or 'closed'."
  type        = string
  default     = null
}

variable "memberships" {
  type = map(object({
    role     = optional(string)
    username = string
  }))
  default = {}
}

variable "repositories" {
  type = map(object({
    permission = optional(string)
    repository = string
  }))
  default = {}
}

variable "settings" {
  type = object({
    notify = optional(bool)
    review_request_delegation = optional(object({
      algorithm    = optional(string)
      member_count = optional(number)
    }))
  })
  default = null
}
