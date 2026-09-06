variable "downgrade_on_destroy" {
  description = "Instead of removing the member from the org, you can choose to downgrade their membership to 'member' when this resource is destroyed. This is useful when wanting to downgrade admins while keeping them in the organization"
  type        = bool
  default     = null
}

variable "role" {
  description = "The role of the user within the organization. Must be one of 'member' or 'admin'."
  type        = string
  default     = null
}

variable "username" {
  description = "The user to add to the organization."
  type        = string
}
