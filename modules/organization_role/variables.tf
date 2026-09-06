variable "base_role" {
  description = "The system role from which this role inherits permissions."
  type        = string
  default     = null
}

variable "description" {
  description = "The description of the organization role."
  type        = string
  default     = null
}

variable "name" {
  description = "The name of the organization role."
  type        = string
}

variable "permissions" {
  description = "The permissions for the organization role."
  type        = set(string)
}
