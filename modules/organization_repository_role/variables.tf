variable "base_role" {
  description = "The base role for the organization repository role."
  type        = string
}

variable "description" {
  description = "The description of the organization repository role."
  type        = string
  default     = null
}

variable "name" {
  description = "The name of the organization repository role."
  type        = string
}

variable "permissions" {
  description = "The permissions for the organization repository role."
  type        = set(string)
}
