variable "assignees" {
  description = "List of Logins to assign to the issue."
  type        = set(string)
  default     = null
}

variable "body" {
  description = "Body of the issue."
  type        = string
  default     = null
}

variable "labels" {
  description = "List of labels to attach to the issue."
  type        = set(string)
  default     = null
}

variable "milestone_number" {
  description = "Milestone number to assign to the issue."
  type        = number
  default     = null
}

variable "repository" {
  description = "The GitHub repository name."
  type        = string
}

variable "title" {
  description = "Title of the issue."
  type        = string
}
