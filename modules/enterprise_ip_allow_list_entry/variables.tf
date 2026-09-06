variable "enterprise_slug" {
  description = "The slug of the enterprise to apply the IP allow list entry to."
  type        = string
}

variable "ip" {
  description = "An IP address or range of IP addresses in CIDR notation."
  type        = string
}

variable "is_active" {
  description = "Whether the entry is currently active."
  type        = bool
  default     = null
}

variable "name" {
  description = "An optional name for the IP allow list entry."
  type        = string
  default     = null
}
