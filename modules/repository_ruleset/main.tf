resource "github_repository_ruleset" "this" {
  enforcement = var.enforcement
  name        = var.name
  repository  = var.repository
  target      = var.target

  dynamic "bypass_actors" {
    for_each = var.bypass_actors == null ? [] : var.bypass_actors
    content {
      actor_id    = bypass_actors.value.actor_id
      actor_type  = bypass_actors.value.actor_type
      bypass_mode = bypass_actors.value.bypass_mode
    }
  }

  dynamic "conditions" {
    for_each = var.conditions == null ? [] : [var.conditions]
    content {

      dynamic "ref_name" {
        for_each = conditions.value.ref_name == null ? [] : [conditions.value.ref_name]
        content {
          exclude = ref_name.value.exclude
          include = ref_name.value.include
        }
      }
    }
  }

  dynamic "rules" {
    for_each = var.rules == null ? [] : [var.rules]
    content {
      creation                      = rules.value.creation
      deletion                      = rules.value.deletion
      non_fast_forward              = rules.value.non_fast_forward
      required_linear_history       = rules.value.required_linear_history
      required_signatures           = rules.value.required_signatures
      update                        = rules.value.update
      update_allows_fetch_and_merge = rules.value.update_allows_fetch_and_merge

      dynamic "branch_name_pattern" {
        for_each = rules.value.branch_name_pattern == null ? [] : [rules.value.branch_name_pattern]
        content {
          name     = branch_name_pattern.value.name
          negate   = branch_name_pattern.value.negate
          operator = branch_name_pattern.value.operator
          pattern  = branch_name_pattern.value.pattern
        }
      }

      dynamic "commit_author_email_pattern" {
        for_each = rules.value.commit_author_email_pattern == null ? [] : [rules.value.commit_author_email_pattern]
        content {
          name     = commit_author_email_pattern.value.name
          negate   = commit_author_email_pattern.value.negate
          operator = commit_author_email_pattern.value.operator
          pattern  = commit_author_email_pattern.value.pattern
        }
      }

      dynamic "commit_message_pattern" {
        for_each = rules.value.commit_message_pattern == null ? [] : [rules.value.commit_message_pattern]
        content {
          name     = commit_message_pattern.value.name
          negate   = commit_message_pattern.value.negate
          operator = commit_message_pattern.value.operator
          pattern  = commit_message_pattern.value.pattern
        }
      }

      dynamic "committer_email_pattern" {
        for_each = rules.value.committer_email_pattern == null ? [] : [rules.value.committer_email_pattern]
        content {
          name     = committer_email_pattern.value.name
          negate   = committer_email_pattern.value.negate
          operator = committer_email_pattern.value.operator
          pattern  = committer_email_pattern.value.pattern
        }
      }

      dynamic "copilot_code_review" {
        for_each = rules.value.copilot_code_review == null ? [] : [rules.value.copilot_code_review]
        content {
          review_draft_pull_requests = copilot_code_review.value.review_draft_pull_requests
          review_on_push             = copilot_code_review.value.review_on_push
        }
      }

      dynamic "file_extension_restriction" {
        for_each = rules.value.file_extension_restriction == null ? [] : [rules.value.file_extension_restriction]
        content {
          restricted_file_extensions = file_extension_restriction.value.restricted_file_extensions
        }
      }

      dynamic "file_path_restriction" {
        for_each = rules.value.file_path_restriction == null ? [] : [rules.value.file_path_restriction]
        content {
          restricted_file_paths = file_path_restriction.value.restricted_file_paths
        }
      }

      dynamic "max_file_path_length" {
        for_each = rules.value.max_file_path_length == null ? [] : [rules.value.max_file_path_length]
        content {
          max_file_path_length = max_file_path_length.value.max_file_path_length
        }
      }

      dynamic "max_file_size" {
        for_each = rules.value.max_file_size == null ? [] : [rules.value.max_file_size]
        content {
          max_file_size = max_file_size.value.max_file_size
        }
      }

      dynamic "merge_queue" {
        for_each = rules.value.merge_queue == null ? [] : [rules.value.merge_queue]
        content {
          check_response_timeout_minutes    = merge_queue.value.check_response_timeout_minutes
          grouping_strategy                 = merge_queue.value.grouping_strategy
          max_entries_to_build              = merge_queue.value.max_entries_to_build
          max_entries_to_merge              = merge_queue.value.max_entries_to_merge
          merge_method                      = merge_queue.value.merge_method
          min_entries_to_merge              = merge_queue.value.min_entries_to_merge
          min_entries_to_merge_wait_minutes = merge_queue.value.min_entries_to_merge_wait_minutes
        }
      }

      dynamic "pull_request" {
        for_each = rules.value.pull_request == null ? [] : [rules.value.pull_request]
        content {
          allowed_merge_methods             = pull_request.value.allowed_merge_methods
          dismiss_stale_reviews_on_push     = pull_request.value.dismiss_stale_reviews_on_push
          require_code_owner_review         = pull_request.value.require_code_owner_review
          require_last_push_approval        = pull_request.value.require_last_push_approval
          required_approving_review_count   = pull_request.value.required_approving_review_count
          required_review_thread_resolution = pull_request.value.required_review_thread_resolution

          dynamic "required_reviewers" {
            for_each = pull_request.value.required_reviewers == null ? [] : pull_request.value.required_reviewers
            content {
              file_patterns     = required_reviewers.value.file_patterns
              minimum_approvals = required_reviewers.value.minimum_approvals

              dynamic "reviewer" {
                for_each = required_reviewers.value.reviewer == null ? [] : [required_reviewers.value.reviewer]
                content {
                  id   = reviewer.value.id
                  type = reviewer.value.type
                }
              }
            }
          }
        }
      }

      dynamic "required_code_scanning" {
        for_each = rules.value.required_code_scanning == null ? [] : [rules.value.required_code_scanning]
        content {

          dynamic "required_code_scanning_tool" {
            for_each = required_code_scanning.value.required_code_scanning_tool == null ? [] : required_code_scanning.value.required_code_scanning_tool
            content {
              alerts_threshold          = required_code_scanning_tool.value.alerts_threshold
              security_alerts_threshold = required_code_scanning_tool.value.security_alerts_threshold
              tool                      = required_code_scanning_tool.value.tool
            }
          }
        }
      }

      dynamic "required_deployments" {
        for_each = rules.value.required_deployments == null ? [] : [rules.value.required_deployments]
        content {
          required_deployment_environments = required_deployments.value.required_deployment_environments
        }
      }

      dynamic "required_status_checks" {
        for_each = rules.value.required_status_checks == null ? [] : [rules.value.required_status_checks]
        content {
          do_not_enforce_on_create             = required_status_checks.value.do_not_enforce_on_create
          strict_required_status_checks_policy = required_status_checks.value.strict_required_status_checks_policy

          dynamic "required_check" {
            for_each = required_status_checks.value.required_check == null ? [] : required_status_checks.value.required_check
            content {
              context        = required_check.value.context
              integration_id = required_check.value.integration_id
            }
          }
        }
      }

      dynamic "tag_name_pattern" {
        for_each = rules.value.tag_name_pattern == null ? [] : [rules.value.tag_name_pattern]
        content {
          name     = tag_name_pattern.value.name
          negate   = tag_name_pattern.value.negate
          operator = tag_name_pattern.value.operator
          pattern  = tag_name_pattern.value.pattern
        }
      }
    }
  }
}
