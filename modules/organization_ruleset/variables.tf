variable "enforcement" {
  description = "The enforcement level of the ruleset. `evaluate` allows admins to test rules before enforcing them. Possible values are `disabled`, `active`, and `evaluate`. Note: `evaluate` is only available for Enterprise plans."
  type        = string
}

variable "name" {
  description = "The name of the ruleset."
  type        = string
}

variable "target" {
  description = "The target of the ruleset. Possible values are branch, tag and push."
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
  description = "Parameters for an organization ruleset condition.The branch and tag rulesets conditions object should contain both repository_name and ref_name properties, or both repository_id and ref_name properties, or both repository_property and ref_name properties. The push rulesets conditions object does not require the ref_name property."
  type = object({
    repository_id = optional(list(number))
    ref_name = optional(object({
      exclude = list(string)
      include = list(string)
    }))
    repository_name = optional(object({
      exclude   = list(string)
      include   = list(string)
      protected = optional(bool)
    }))
    repository_property = optional(object({
      exclude = optional(list(object({
        name            = string
        property_values = list(string)
        source          = string
      })))
      include = optional(list(object({
        name            = string
        property_values = list(string)
        source          = string
      })))
    }))
  })
  default = null
}

variable "rules" {
  description = "Rules within the ruleset."
  type = object({
    creation                = optional(bool)
    deletion                = optional(bool)
    non_fast_forward        = optional(bool)
    required_linear_history = optional(bool)
    required_signatures     = optional(bool)
    update                  = optional(bool)
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
    required_status_checks = optional(object({
      do_not_enforce_on_create             = optional(bool)
      strict_required_status_checks_policy = optional(bool)
      required_check = set(object({
        context        = string
        integration_id = optional(number)
      }))
    }))
    required_workflows = optional(object({
      do_not_enforce_on_create = optional(bool)
      required_workflow = set(object({
        path          = string
        ref           = optional(string)
        repository_id = number
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
