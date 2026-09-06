variable "key" {
  description = "A SSH key."
  type        = string
}

variable "read_only" {
  description = "A boolean qualifying the key to be either read only or read/write."
  type        = bool
  default     = null
}

variable "repository" {
  description = "Name of the GitHub repository."
  type        = string
}

variable "title" {
  description = "A title."
  type        = string
}
