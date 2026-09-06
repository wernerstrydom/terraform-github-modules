variable "branch" {
  description = "The repository branch to create."
  type        = string
}

variable "etag" {
  description = "An etag representing the Branch object."
  type        = string
  default     = null
}

variable "repository" {
  description = "The GitHub repository name."
  type        = string
}

variable "source_branch" {
  description = "The branch name to start from. Defaults to 'main'."
  type        = string
  default     = null
}

variable "source_sha" {
  description = "The commit hash to start from. Defaults to the tip of 'source_branch'. If provided, 'source_branch' is ignored."
  type        = string
  default     = null
}
