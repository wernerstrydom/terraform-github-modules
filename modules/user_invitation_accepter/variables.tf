variable "allow_empty_id" {
  description = "Allow the ID to be unset. This will result in the resource being skipped when the ID is not set instead of returning an error."
  type        = bool
  default     = null
}

variable "invitation_id" {
  description = "ID of the invitation to accept. Must be set when 'allow_empty_id' is 'false'."
  type        = string
  default     = null
}
