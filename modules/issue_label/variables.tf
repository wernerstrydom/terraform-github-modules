variable "color" {
  description = "A 6 character hex code, without the leading '#', identifying the color of the label."
  type        = string
}

variable "description" {
  description = "A short description of the label."
  type        = string
  default     = null
}

variable "etag" {
  type    = string
  default = null
}

variable "name" {
  description = "The name of the label."
  type        = string
}

variable "repository" {
  description = "The GitHub repository."
  type        = string
}
