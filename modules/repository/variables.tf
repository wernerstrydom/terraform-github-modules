variable "allow_auto_merge" {
  description = "Set to 'true' to allow auto-merging pull requests on the repository."
  type        = bool
  default     = null
}

variable "allow_forking" {
  description = "Set to 'true' to allow private forking on the repository; this is only relevant if the repository is owned by an organization and is private or internal."
  type        = bool
  default     = null
}

variable "allow_merge_commit" {
  description = "Set to 'false' to disable merge commits on the repository."
  type        = bool
  default     = null
}

variable "allow_rebase_merge" {
  description = "Set to 'false' to disable rebase merges on the repository."
  type        = bool
  default     = null
}

variable "allow_squash_merge" {
  description = "Set to 'false' to disable squash merges on the repository."
  type        = bool
  default     = null
}

variable "allow_update_branch" {
  description = "Set to 'true' to always suggest updating pull request branches."
  type        = bool
  default     = null
}

variable "archive_on_destroy" {
  description = "Set to 'true' to archive the repository instead of deleting on destroy."
  type        = bool
  default     = null
}

variable "archived" {
  description = "Specifies if the repository should be archived. Defaults to 'false'. NOTE Currently, the API does not support unarchiving."
  type        = bool
  default     = null
}

variable "auto_init" {
  description = "Set to 'true' to produce an initial commit in the repository."
  type        = bool
  default     = null
}

variable "delete_branch_on_merge" {
  description = "Automatically delete head branch after a pull request is merged. Defaults to 'false'."
  type        = bool
  default     = null
}

variable "description" {
  description = "A description of the repository."
  type        = string
  default     = null
}

variable "etag" {
  type    = string
  default = null
}

variable "fork" {
  description = "Set to 'true' to fork an existing repository."
  type        = string
  default     = null
}

variable "gitignore_template" {
  description = "Use the name of the template without the extension. For example, 'Haskell'."
  type        = string
  default     = null
}

variable "has_discussions" {
  description = "Set to 'true' to enable GitHub Discussions on the repository. Defaults to 'false'."
  type        = bool
  default     = null
}

variable "has_issues" {
  description = "Set to 'true' to enable the GitHub Issues features on the repository"
  type        = bool
  default     = null
}

variable "has_projects" {
  description = "Set to 'true' to enable the GitHub Projects features on the repository. Per the GitHub documentation when in an organization that has disabled repository projects it will default to 'false' and will otherwise default to 'true'. If you specify 'true' when it has been disabled it will return an error."
  type        = bool
  default     = null
}

variable "has_wiki" {
  description = "Set to 'true' to enable the GitHub Wiki features on the repository."
  type        = bool
  default     = null
}

variable "homepage_url" {
  description = "URL of a page describing the project."
  type        = string
  default     = null
}

variable "is_template" {
  description = "Set to 'true' to tell GitHub that this is a template repository."
  type        = bool
  default     = null
}

variable "license_template" {
  description = "Use the name of the template without the extension. For example, 'mit' or 'mpl-2.0'."
  type        = string
  default     = null
}

variable "merge_commit_message" {
  description = "Can be 'PR_BODY', 'PR_TITLE', or 'BLANK' for a default merge commit message."
  type        = string
  default     = null
}

variable "merge_commit_title" {
  description = "Can be 'PR_TITLE' or 'MERGE_MESSAGE' for a default merge commit title."
  type        = string
  default     = null
}

variable "name" {
  description = "The name of the repository."
  type        = string
}

variable "source_owner" {
  description = "The owner of the source repository to fork from."
  type        = string
  default     = null
}

variable "source_repo" {
  description = "The name of the source repository to fork from."
  type        = string
  default     = null
}

variable "squash_merge_commit_message" {
  description = "Can be 'PR_BODY', 'COMMIT_MESSAGES', or 'BLANK' for a default squash merge commit message."
  type        = string
  default     = null
}

variable "squash_merge_commit_title" {
  description = "Can be 'PR_TITLE' or 'COMMIT_OR_PR_TITLE' for a default squash merge commit title."
  type        = string
  default     = null
}

variable "topics" {
  description = "The list of topics of the repository."
  type        = set(string)
  default     = null
}

variable "visibility" {
  description = "Can be 'public' or 'private'. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, visibility can also be 'internal'."
  type        = string
  default     = null
}

variable "web_commit_signoff_required" {
  description = "Require contributors to sign off on web-based commits."
  type        = bool
  default     = null
}

variable "security_and_analysis" {
  description = "Security and analysis settings for the repository. To use this parameter you must have admin permissions for the repository or be an owner or security manager for the organization that owns the repository."
  type = object({
    advanced_security = optional(object({
      status = string
    }))
    code_security = optional(object({
      status = string
    }))
    secret_scanning = optional(object({
      status = string
    }))
    secret_scanning_ai_detection = optional(object({
      status = string
    }))
    secret_scanning_non_provider_patterns = optional(object({
      status = string
    }))
    secret_scanning_push_protection = optional(object({
      status = string
    }))
  })
  default = null
}

variable "template" {
  description = "Use a template repository to create this resource."
  type = object({
    include_all_branches = optional(bool)
    owner                = string
    repository           = string
  })
  default = null
}

variable "collaborators" {
  type = map(object({
    permission                  = optional(string)
    permission_diff_suppression = optional(bool)
    username                    = string
  }))
  default = {}
}

variable "webhooks" {
  type = map(object({
    active = optional(bool)
    etag   = optional(string)
    events = set(string)
    configuration = optional(object({
      content_type = optional(string)
      insecure_ssl = optional(bool)
      secret       = optional(string)
      url          = string
    }))
  }))
  default = {}
}

variable "deploy_keys" {
  type = map(object({
    key       = string
    read_only = optional(bool)
    title     = string
  }))
  default = {}
}

variable "environments" {
  type = map(object({
    can_admins_bypass   = optional(bool)
    environment         = string
    prevent_self_review = optional(bool)
    wait_timer          = optional(number)
    deployment_branch_policy = optional(object({
      custom_branch_policies = bool
      protected_branches     = bool
    }))
    reviewers = optional(object({
      teams = optional(set(number))
      users = optional(set(number))
    }))
    secrets = optional(map(object({
      key_id          = optional(string)
      secret_name     = string
      value           = optional(string)
      value_encrypted = optional(string)
    })), {})
    variables = optional(map(object({
      value         = string
      variable_name = string
    })), {})
    deployment_policies = optional(map(object({
      branch_pattern = optional(string)
      tag_pattern    = optional(string)
    })), {})
  }))
  default = {}
}

variable "actions_secrets" {
  type = map(object({
    key_id          = optional(string)
    secret_name     = string
    value           = optional(string)
    value_encrypted = optional(string)
  }))
  default = {}
}

variable "actions_variables" {
  type = map(object({
    value         = string
    variable_name = string
  }))
  default = {}
}

variable "dependabot_secrets" {
  type = map(object({
    key_id          = optional(string)
    secret_name     = string
    value           = optional(string)
    value_encrypted = optional(string)
  }))
  default = {}
}

variable "codespaces_secrets" {
  type = map(object({
    encrypted_value = optional(string)
    plaintext_value = optional(string)
    secret_name     = string
  }))
  default = {}
}

variable "branch_protections" {
  type = map(object({
    allows_deletions                = optional(bool)
    allows_force_pushes             = optional(bool)
    enforce_admins                  = optional(bool)
    force_push_bypassers            = optional(set(string))
    lock_branch                     = optional(bool)
    pattern                         = string
    require_conversation_resolution = optional(bool)
    require_signed_commits          = optional(bool)
    required_linear_history         = optional(bool)
    required_pull_request_reviews = optional(list(object({
      dismiss_stale_reviews           = optional(bool)
      dismissal_restrictions          = optional(set(string))
      pull_request_bypassers          = optional(set(string))
      require_code_owner_reviews      = optional(bool)
      require_last_push_approval      = optional(bool)
      required_approving_review_count = optional(number)
      restrict_dismissals             = optional(bool)
    })))
    required_status_checks = optional(list(object({
      contexts = optional(set(string))
      strict   = optional(bool)
    })))
    restrict_pushes = optional(list(object({
      blocks_creations = optional(bool)
      push_allowances  = optional(set(string))
    })))
  }))
  default = {}
}

variable "rulesets" {
  type = map(object({
    enforcement = string
    name        = string
    target      = string
    bypass_actors = optional(list(object({
      actor_id    = optional(number)
      actor_type  = string
      bypass_mode = string
    })))
    conditions = optional(object({
      ref_name = object({
        exclude = list(string)
        include = list(string)
      })
    }))
    rules = optional(object({
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
    }))
  }))
  default = {}
}

variable "custom_properties" {
  type = map(object({
    property_name  = string
    property_type  = string
    property_value = set(string)
  }))
  default = {}
}

variable "autolink_references" {
  type = map(object({
    is_alphanumeric     = optional(bool)
    key_prefix          = string
    target_url_template = string
  }))
  default = {}
}

variable "files" {
  type = map(object({
    branch              = optional(string)
    commit_author       = optional(string)
    commit_email        = optional(string)
    commit_message      = optional(string)
    content             = string
    file                = string
    overwrite_on_create = optional(bool)
  }))
  default = {}
}

variable "issue_labels" {
  type = map(object({
    color       = string
    description = optional(string)
    etag        = optional(string)
    name        = string
  }))
  default = {}
}

variable "milestones" {
  type = map(object({
    description = optional(string)
    due_date    = optional(string)
    owner       = string
    state       = optional(string)
    title       = string
  }))
  default = {}
}

variable "pages" {
  type = object({
    build_type     = optional(string)
    cname          = optional(string)
    https_enforced = optional(bool)
    public         = optional(bool)
  })
  default = null
}

variable "dependabot_security_updates" {
  type = object({
    enabled = bool
  })
  default = null
}

variable "vulnerability_alerts" {
  type = object({
    enabled = optional(bool)
  })
  default = null
}

variable "actions_permissions" {
  type = object({
    allowed_actions      = optional(string)
    enabled              = optional(bool)
    sha_pinning_required = optional(bool)
    allowed_actions_config = optional(object({
      github_owned_allowed = bool
      patterns_allowed     = optional(set(string))
      verified_allowed     = optional(bool)
    }))
  })
  default = null
}

variable "workflow_permissions" {
  type = object({
    can_approve_pull_request_reviews = optional(bool)
    default_workflow_permissions     = optional(string)
  })
  default = null
}

variable "actions_access_level" {
  type = object({
    access_level = string
  })
  default = null
}

variable "default_branch" {
  type = object({
    branch          = string
    etag            = optional(string)
    rename          = optional(bool)
    wait_for_rename = optional(bool)
  })
  default = null
}
