variable "active" {
  description = "Indicate if the webhook should receive events. Defaults to 'true'."
  type        = bool
  default     = null
}

variable "etag" {
  type    = string
  default = null
}

variable "events" {
  description = "A list of events which should trigger the webhook"
  type        = set(string)
}

variable "repository" {
  description = "The repository name of the webhook, not including the organization, which will be inferred."
  type        = string
}

variable "configuration" {
  description = "Configuration for the webhook."
  type = object({
    content_type = optional(string)
    insecure_ssl = optional(bool)
    secret       = optional(string)
    url          = string
  })
  default = null
}
