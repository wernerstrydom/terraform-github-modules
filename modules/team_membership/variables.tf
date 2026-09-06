variable "role" {
  description = "The role of the user within the team. Must be one of 'member' or 'maintainer'."
  type        = string
  default     = null
}

variable "team_id" {
  description = "The GitHub team id or the GitHub team slug."
  type        = string
}

variable "username" {
  description = "The user to add to the team."
  type        = string
}
