variable "allows_public_repositories" {
  description = "Whether public repositories can be added to the runner group."
  type        = bool
  default     = null
}

variable "name" {
  description = "Name of the runner group."
  type        = string
}

variable "restricted_to_workflows" {
  description = "If 'true', the runner group will be restricted to running only the workflows specified in the 'selected_workflows' array. Defaults to 'false'."
  type        = bool
  default     = null
}

variable "selected_repository_ids" {
  description = "List of repository IDs that can access the runner group."
  type        = set(number)
  default     = null
}

variable "selected_workflows" {
  description = "List of workflows the runner group should be allowed to run. This setting will be ignored unless restricted_to_workflows is set to 'true'."
  type        = list(string)
  default     = null
}

variable "visibility" {
  description = "The visibility of the runner group."
  type        = string
}
