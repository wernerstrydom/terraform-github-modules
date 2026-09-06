variable "installation_id" {
  description = "The GitHub app installation id."
  type        = string
}

variable "selected_repositories" {
  description = "A list of repository names to install the app on."
  type        = set(string)
}
