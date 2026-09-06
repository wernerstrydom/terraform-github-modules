variable "branch" {
  description = "The name of the branch to set as the default (e.g. 'main')."
  type        = string
}

variable "etag" {
  description = "The ETag header for the repository API response."
  type        = string
  default     = null
}

variable "rename" {
  description = "If `true` rename the existing branch when the `branch` input is changed. Defaults to 'false'."
  type        = bool
  default     = null
}

variable "repository" {
  description = "The name of the GitHub repository."
  type        = string
}

variable "wait_for_rename" {
  description = "If `true`, poll until GitHub propagates the renamed default branch before proceeding. Only has effect when `rename` is also `true`. Defaults to 'false'."
  type        = bool
  default     = null
}
