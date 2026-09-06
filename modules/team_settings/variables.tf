variable "notify" {
  description = "Whether to notify the entire team when at least one member is also assigned to the pull request."
  type        = bool
  default     = null
}

variable "team_id" {
  description = "The GitHub team id or the GitHub team slug."
  type        = string
}

variable "review_request_delegation" {
  description = "The settings for delegating code reviews to individuals on behalf of the team. If this block is present, even without any fields, then review request delegation will be enabled for the team."
  type = object({
    algorithm    = optional(string)
    member_count = optional(number)
  })
  default = null
}
