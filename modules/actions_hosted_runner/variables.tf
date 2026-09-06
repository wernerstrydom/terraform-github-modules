variable "image_gen" {
  description = "Whether this runner should be used to generate custom images. Cannot be changed after creation."
  type        = bool
  default     = null
}

variable "image_version" {
  description = "The version of the runner image to deploy. This is relevant only for runners using custom images."
  type        = string
  default     = null
}

variable "maximum_runners" {
  description = "Maximum number of runners to scale up to."
  type        = number
  default     = null
}

variable "name" {
  description = "Name of the hosted runner. Must be between 1 and 64 characters and may only contain upper and lowercase letters a-z, numbers 0-9, '.', '-', and '_'."
  type        = string
}

variable "public_ip_enabled" {
  description = "Whether to enable static public IP."
  type        = bool
  default     = null
}

variable "runner_group_id" {
  description = "The runner group ID."
  type        = number
}

variable "size" {
  description = "Machine size (e.g., '4-core', '8-core'). Can be updated to scale the runner."
  type        = string
}

variable "image" {
  description = "Image configuration for the hosted runner. Cannot be changed after creation."
  type = object({
    id      = string
    size_gb = optional(number)
    source  = optional(string)
  })
  default = null
}

variable "timeouts" {
  type = object({
    delete = optional(string)
  })
  default = null
}
