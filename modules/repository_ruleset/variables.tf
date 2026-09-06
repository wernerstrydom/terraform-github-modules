variable "enforcement" {
  description = "Possible values for Enforcement are `disabled`, `active`, `evaluate`. Note: `evaluate` is currently only supported for owners of type `organization`."
  type        = string
}

variable "name" {
  description = "The name of the ruleset."
  type        = string
}

variable "repository" {
  description = "Name of the repository to apply ruleset to."
  type        = string
}

variable "target" {
  description = "Possible values are branch, push and tag"
  type        = string
}

variable "bypass_actors" {
  description = "The actors that can bypass the rules in this ruleset."
  type = list(object({
    actor_id    = optional(number)
    actor_type  = string
    bypass_mode = string
  }))
  default = null
}

variable "conditions" {
  description = "Parameters for a repository ruleset ref name condition."
  type = object({
    ref_name = object({
      exclude = list(string)
      include = list(string)
    })
  })
  default = null
}

variable "rules" {
  description = "Rules within the ruleset."
  type = object({
    creation                      = optional(bool)
    deletion                      = optional(bool)
    non_fast_forward              = optional(bool)
    required_linear_history       = optional(bool)
    required_signatures           = optional(bool)
    update                        = optional(bool)
    update_allows_fetch_and_merge = optional(bool)
    branch_name_pattern = optional(object({
      name     = optional(string)
      negate   = optional(bool)
      operator = string
      pattern  = string
    }))
    commit_author_email_pattern = optional(object({
      name     = optional(string)
      negate   = optional(bool)
      operator = string
      pattern  = string
    }))
    commit_message_pattern = optional(object({
      name     = optional(string)
      negate   = optional(bool)
      operator = string
      pattern  = string
    }))
    committer_email_pattern = optional(object({
      name     = optional(string)
      negate   = optional(bool)
      operator = string
      pattern  = string
    }))
    copilot_code_review = optional(object({
      review_draft_pull_requests = optional(bool)
      review_on_push             = optional(bool)
    }))
    file_extension_restriction = optional(object({
      restricted_file_extensions = set(string)
    }))
    file_path_restriction = optional(object({
      restricted_file_paths = list(string)
    }))
    max_file_path_length = optional(object({
      max_file_path_length = number
    }))
    max_file_size = optional(object({
      max_file_size = number
    }))
    merge_queue = optional(object({
      check_response_timeout_minutes    = optional(number)
      grouping_strategy                 = optional(string)
      max_entries_to_build              = optional(number)
      max_entries_to_merge              = optional(number)
      merge_method                      = optional(string)
      min_entries_to_merge              = optional(number)
      min_entries_to_merge_wait_minutes = optional(number)
    }))
    pull_request = optional(object({
      allowed_merge_methods             = optional(list(string))
      dismiss_stale_reviews_on_push     = optional(bool)
      require_code_owner_review         = optional(bool)
      require_last_push_approval        = optional(bool)
      required_approving_review_count   = optional(number)
      required_review_thread_resolution = optional(bool)
      required_reviewers = optional(list(object({
        file_patterns     = list(string)
        minimum_approvals = number
        reviewer = object({
          id   = number
          type = string
        })
      })))
    }))
    required_code_scanning = optional(object({
      required_code_scanning_tool = set(object({
        alerts_threshold          = string
        security_alerts_threshold = string
        tool                      = string
      }))
    }))
    required_deployments = optional(object({
      required_deployment_environments = list(string)
    }))
    required_status_checks = optional(object({
      do_not_enforce_on_create             = optional(bool)
      strict_required_status_checks_policy = optional(bool)
      required_check = set(object({
        context        = string
        integration_id = optional(number)
      }))
    }))
    tag_name_pattern = optional(object({
      name     = optional(string)
      negate   = optional(bool)
      operator = string
      pattern  = string
    }))
  })
  default = null
}
