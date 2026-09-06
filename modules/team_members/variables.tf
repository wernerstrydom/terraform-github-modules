variable "team_slug" {
  description = "Slug of the GitHub team to manage membership for."
  type        = string
  default     = null
}

variable "members" {
  description = "List of users that should be members of the team."
  type = set(object({
    role     = optional(string)
    username = string
  }))
  default = null
}
