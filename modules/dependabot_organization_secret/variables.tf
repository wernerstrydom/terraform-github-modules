variable "key_id" {
  description = "ID of the public key used to encrypt the secret."
  type        = string
  default     = null
}

variable "secret_name" {
  description = "Name of the secret."
  type        = string
}

variable "value" {
  description = "Plaintext value to be encrypted."
  type        = string
  default     = null
  sensitive   = true
}

variable "value_encrypted" {
  description = "Value encrypted with the GitHub public key, defined by key_id, in Base64 format."
  type        = string
  default     = null
  sensitive   = true
}

variable "visibility" {
  description = "Configures the access that repositories have to the organization secret. Must be one of 'all', 'private' or 'selected'. 'selected_repository_ids' is required if set to 'selected'."
  type        = string
}
