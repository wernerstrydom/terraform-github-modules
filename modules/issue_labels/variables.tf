variable "repository" {
  description = "The GitHub repository."
  type        = string
}

variable "label" {
  description = "List of labels"
  type = set(object({
    color       = string
    description = optional(string)
    name        = string
    url         = optional(string)
  }))
  default = null
}
