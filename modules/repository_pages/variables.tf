variable "build_type" {
  description = "The type of GitHub Pages site to build. Can be 'legacy' or 'workflow'."
  type        = string
  default     = null
}

variable "cname" {
  description = "The custom domain for the repository."
  type        = string
  default     = null
}

variable "https_enforced" {
  description = "Whether the rendered GitHub Pages site will only be served over HTTPS. Requires 'cname' to be set."
  type        = bool
  default     = null
}

variable "public" {
  description = "Whether the GitHub Pages site is publicly visible. If set to `true`, the site is accessible to anyone on the internet. If set to `false`, the site will only be accessible to users who have at least `read` access to the repository that published the site."
  type        = bool
  default     = null
}

variable "repository" {
  description = "The repository name to configure GitHub Pages for."
  type        = string
}
