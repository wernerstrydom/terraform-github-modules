variable "description" {
  description = "A description of the milestone."
  type        = string
  default     = null
}

variable "due_date" {
  description = "The milestone due date. In 'yyyy-mm-dd' format."
  type        = string
  default     = null
}

variable "owner" {
  description = "The owner of the GitHub Repository."
  type        = string
}

variable "repository" {
  description = "The name of the GitHub Repository."
  type        = string
}

variable "state" {
  description = "The state of the milestone. Either 'open' or 'closed'. Default: 'open'."
  type        = string
  default     = null
}

variable "title" {
  description = "The title of the milestone."
  type        = string
}
