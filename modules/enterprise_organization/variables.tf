variable "admin_logins" {
  description = "List of organization owner usernames."
  type        = set(string)
}

variable "billing_email" {
  description = "The billing email address."
  type        = string
}

variable "description" {
  description = "The description of the organization."
  type        = string
  default     = null
}

variable "display_name" {
  description = "The display name of the organization."
  type        = string
  default     = null
}

variable "enterprise_id" {
  description = "The ID of the enterprise."
  type        = string
}

variable "name" {
  description = "The name of the organization."
  type        = string
}
