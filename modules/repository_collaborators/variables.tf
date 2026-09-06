variable "repository" {
  description = "Name of the repository."
  type        = string
}

variable "ignore_team" {
  description = "Teams to ignore when managing repository collaborators."
  type = set(object({
    team_id = string
  }))
  default = null
}

variable "team" {
  description = "Teams to grant access to the repository."
  type = set(object({
    permission = optional(string)
    team_id    = string
  }))
  default = null
}

variable "user" {
  description = "Users to grant access to the repository."
  type = set(object({
    permission = optional(string)
    username   = string
  }))
  default = null
}
