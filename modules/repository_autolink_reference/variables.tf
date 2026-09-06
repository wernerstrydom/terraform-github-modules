variable "is_alphanumeric" {
  description = "Whether this autolink reference matches alphanumeric characters. If false, this autolink reference only matches numeric characters."
  type        = bool
  default     = null
}

variable "key_prefix" {
  description = "This prefix appended by a number will generate a link any time it is found in an issue, pull request, or commit"
  type        = string
}

variable "repository" {
  description = "The repository name"
  type        = string
}

variable "target_url_template" {
  description = "The template of the target URL used for the links; must be a valid URL and contain `<num>` for the reference number"
  type        = string
}
