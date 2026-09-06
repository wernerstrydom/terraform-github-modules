variable "team_slug" {
  description = "Slug of the team."
  type        = string
}

variable "group" {
  description = "An Array of GitHub Identity Provider Groups (or empty [])."
  type = set(object({
    group_description = string
    group_id          = string
    group_name        = string
  }))
  default = null
}
