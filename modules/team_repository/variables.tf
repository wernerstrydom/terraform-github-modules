variable "permission" {
  description = "The permissions of team members regarding the repository. Must be one of 'pull', 'triage', 'push', 'maintain', 'admin' or the name of an existing custom repository role within the organisation."
  type        = string
  default     = null
}

variable "repository" {
  description = "The repository to add to the team."
  type        = string
}

variable "team_id" {
  description = "ID or slug of team"
  type        = string
}
