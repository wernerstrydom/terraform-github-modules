variable "base_ref" {
  description = "Name of the branch serving as the base of the Pull Request."
  type        = string
}

variable "base_repository" {
  description = "Name of the base repository to retrieve the Pull Requests from."
  type        = string
}

variable "body" {
  description = "Body of the Pull Request."
  type        = string
  default     = null
}

variable "head_ref" {
  description = "Name of the branch serving as the head of the Pull Request."
  type        = string
}

variable "maintainer_can_modify" {
  description = "Controls whether the base repository maintainers can modify the Pull Request. Default: 'false'."
  type        = bool
  default     = null
}

variable "owner" {
  description = "Owner of the repository. If not provided, the provider's default owner is used."
  type        = string
  default     = null
}

variable "title" {
  description = "The title of the Pull Request."
  type        = string
}
