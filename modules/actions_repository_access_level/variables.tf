variable "access_level" {
  description = "Where the actions or reusable workflows of the repository may be used. Possible values are 'none', 'user', 'organization', or 'enterprise'."
  type        = string
}

variable "repository" {
  description = "The GitHub repository."
  type        = string
}
