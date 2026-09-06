variable "advanced_security_enabled_for_new_repositories" {
  description = "Whether GitHub Advanced Security is automatically enabled for new repositories."
  type        = bool
  default     = null
}

variable "enterprise_slug" {
  description = "The slug of the enterprise."
  type        = string
}

variable "secret_scanning_enabled_for_new_repositories" {
  description = "Whether secret scanning is automatically enabled for new repositories."
  type        = bool
  default     = null
}

variable "secret_scanning_push_protection_custom_link" {
  description = "Custom URL for secret scanning push protection bypass instructions."
  type        = string
  default     = null
}

variable "secret_scanning_push_protection_enabled_for_new_repositories" {
  description = "Whether secret scanning push protection is automatically enabled for new repositories."
  type        = bool
  default     = null
}

variable "secret_scanning_validity_checks_enabled" {
  description = "Whether secret scanning validity checks are enabled."
  type        = bool
  default     = null
}
