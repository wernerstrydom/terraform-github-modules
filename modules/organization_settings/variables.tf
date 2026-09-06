variable "advanced_security_enabled_for_new_repositories" {
  description = "Whether or not advanced security is enabled for new repositories."
  type        = bool
  default     = null
}

variable "billing_email" {
  description = "The billing email address for the organization."
  type        = string
}

variable "blog" {
  description = "The blog URL for the organization."
  type        = string
  default     = null
}

variable "company" {
  description = "The company name for the organization."
  type        = string
  default     = null
}

variable "default_repository_permission" {
  description = "The default permission for organization members to create new repositories. Can be one of 'read', 'write', 'admin' or 'none'."
  type        = string
  default     = null
}

variable "dependabot_alerts_enabled_for_new_repositories" {
  description = "Whether or not dependabot alerts are enabled for new repositories."
  type        = bool
  default     = null
}

variable "dependabot_security_updates_enabled_for_new_repositories" {
  description = "Whether or not dependabot security updates are enabled for new repositories."
  type        = bool
  default     = null
}

variable "dependency_graph_enabled_for_new_repositories" {
  description = "Whether or not dependency graph is enabled for new repositories."
  type        = bool
  default     = null
}

variable "description" {
  description = "The description for the organization."
  type        = string
  default     = null
}

variable "email" {
  description = "The email address for the organization."
  type        = string
  default     = null
}

variable "has_organization_projects" {
  description = "Whether or not organization projects are enabled for the organization."
  type        = bool
  default     = null
}

variable "has_repository_projects" {
  description = "Whether or not repository projects are enabled for the organization."
  type        = bool
  default     = null
}

variable "location" {
  description = "The location for the organization."
  type        = string
  default     = null
}

variable "members_can_create_internal_repositories" {
  description = "Whether or not organization members can create new internal repositories. For Enterprise Organizations only."
  type        = bool
  default     = null
}

variable "members_can_create_pages" {
  description = "Whether or not organization members can create new pages."
  type        = bool
  default     = null
}

variable "members_can_create_private_pages" {
  description = "Whether or not organization members can create new private pages."
  type        = bool
  default     = null
}

variable "members_can_create_private_repositories" {
  description = "Whether or not organization members can create new private repositories."
  type        = bool
  default     = null
}

variable "members_can_create_public_pages" {
  description = "Whether or not organization members can create new public pages."
  type        = bool
  default     = null
}

variable "members_can_create_public_repositories" {
  description = "Whether or not organization members can create new public repositories."
  type        = bool
  default     = null
}

variable "members_can_create_repositories" {
  description = "Whether or not organization members can create new repositories."
  type        = bool
  default     = null
}

variable "members_can_fork_private_repositories" {
  description = "Whether or not organization members can fork private repositories."
  type        = bool
  default     = null
}

variable "name" {
  description = "The name for the organization."
  type        = string
  default     = null
}

variable "secret_scanning_enabled_for_new_repositories" {
  description = "Whether or not secret scanning is enabled for new repositories."
  type        = bool
  default     = null
}

variable "secret_scanning_push_protection_enabled_for_new_repositories" {
  description = "Whether or not secret scanning push protection is enabled for new repositories."
  type        = bool
  default     = null
}

variable "twitter_username" {
  description = "The Twitter username for the organization."
  type        = string
  default     = null
}

variable "web_commit_signoff_required" {
  description = "Whether or not commit signatures are required for commits to the organization."
  type        = bool
  default     = null
}
