variable "body" {
  description = "Text describing the contents of the tag."
  type        = string
  default     = null
}

variable "discussion_category_name" {
  description = "If specified, a discussion of the specified category is created and linked to the release. The value must be a category that already exists in the repository."
  type        = string
  default     = null
}

variable "draft" {
  description = "Set to 'false' to create a published release."
  type        = bool
  default     = null
}

variable "generate_release_notes" {
  description = "Set to 'true' to automatically generate the name and body for this release. If 'name' is specified, the specified name will be used; otherwise, a name will be automatically generated. If 'body' is specified, the body will be pre-pended to the automatically generated notes."
  type        = bool
  default     = null
}

variable "name" {
  description = "The name of the release."
  type        = string
  default     = null
}

variable "prerelease" {
  description = "Set to 'false' to identify the release as a full release."
  type        = bool
  default     = null
}

variable "repository" {
  description = "The name of the repository."
  type        = string
}

variable "tag_name" {
  description = "The name of the tag."
  type        = string
}

variable "target_commitish" {
  description = "The branch name or commit SHA the tag is created from."
  type        = string
  default     = null
}
