variable "environment" {
  description = "Name of the environment."
  type        = string
}

variable "key_id" {
  description = "ID of the public key used to encrypt the secret."
  type        = string
  default     = null
}

variable "repository" {
  description = "Name of the repository."
  type        = string
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
