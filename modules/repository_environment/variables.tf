variable "can_admins_bypass" {
  description = "Can Admins bypass deployment protections"
  type        = bool
  default     = null
}

variable "environment" {
  description = "The name of the environment."
  type        = string
}

variable "prevent_self_review" {
  description = "Prevent users from approving workflows runs that they triggered."
  type        = bool
  default     = null
}

variable "repository" {
  description = "The repository of the environment."
  type        = string
}

variable "wait_timer" {
  description = "Amount of time to delay a job after the job is initially triggered."
  type        = number
  default     = null
}

variable "deployment_branch_policy" {
  description = "The deployment branch policy configuration"
  type = object({
    custom_branch_policies = bool
    protected_branches     = bool
  })
  default = null
}

variable "reviewers" {
  description = "The environment reviewers configuration."
  type = object({
    teams = optional(set(number))
    users = optional(set(number))
  })
  default = null
}

variable "secrets" {
  type = map(object({
    key_id          = optional(string)
    secret_name     = string
    value           = optional(string)
    value_encrypted = optional(string)
  }))
  default = {}
}

variable "variables" {
  type = map(object({
    value         = string
    variable_name = string
  }))
  default = {}
}

variable "deployment_policies" {
  type = map(object({
    branch_pattern = optional(string)
    tag_pattern    = optional(string)
  }))
  default = {}
}
