variable "encrypted_value" {
  description = "Encrypted value of the secret using the GitHub public key in Base64 format."
  type        = string
  default     = null
  sensitive   = true
}

variable "plaintext_value" {
  description = "Plaintext value of the secret to be encrypted."
  type        = string
  default     = null
  sensitive   = true
}

variable "secret_name" {
  description = "Name of the secret."
  type        = string
}

variable "selected_repository_ids" {
  description = "An array of repository ids that can access the user secret."
  type        = set(number)
  default     = null
}
