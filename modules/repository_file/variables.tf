variable "branch" {
  description = "The branch name, defaults to the repository's default branch"
  type        = string
  default     = null
}

variable "commit_author" {
  description = "The commit author name, defaults to the authenticated user's name. GitHub app users may omit author and email information so GitHub can verify commits as the GitHub App."
  type        = string
  default     = null
}

variable "commit_email" {
  description = "The commit author email address, defaults to the authenticated user's email address. GitHub app users may omit author and email information so GitHub can verify commits as the GitHub App."
  type        = string
  default     = null
}

variable "commit_message" {
  description = "The commit message when creating, updating or deleting the file"
  type        = string
  default     = null
}

variable "content" {
  description = "The file's content"
  type        = string
}

variable "file" {
  description = "The file path to manage"
  type        = string
}

variable "overwrite_on_create" {
  description = "Enable overwriting existing files, defaults to \"false\""
  type        = bool
  default     = null
}

variable "repository" {
  description = "The repository name"
  type        = string
}
