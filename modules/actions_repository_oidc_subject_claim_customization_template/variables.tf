variable "include_claim_keys" {
  description = "A list of OpenID Connect claims."
  type        = list(string)
  default     = null
}

variable "repository" {
  description = "The name of the repository."
  type        = string
}

variable "use_default" {
  description = "Whether to use the default template or not. If 'true', 'include_claim_keys' must not be set."
  type        = bool
}
