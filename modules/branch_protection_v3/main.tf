resource "github_branch_protection_v3" "this" {
  branch                          = var.branch
  enforce_admins                  = var.enforce_admins
  repository                      = var.repository
  require_conversation_resolution = var.require_conversation_resolution
  require_signed_commits          = var.require_signed_commits

  dynamic "required_pull_request_reviews" {
    for_each = var.required_pull_request_reviews == null ? [] : [var.required_pull_request_reviews]
    content {
      dismiss_stale_reviews           = required_pull_request_reviews.value.dismiss_stale_reviews
      dismissal_apps                  = required_pull_request_reviews.value.dismissal_apps
      dismissal_teams                 = required_pull_request_reviews.value.dismissal_teams
      dismissal_users                 = required_pull_request_reviews.value.dismissal_users
      require_code_owner_reviews      = required_pull_request_reviews.value.require_code_owner_reviews
      require_last_push_approval      = required_pull_request_reviews.value.require_last_push_approval
      required_approving_review_count = required_pull_request_reviews.value.required_approving_review_count

      dynamic "bypass_pull_request_allowances" {
        for_each = required_pull_request_reviews.value.bypass_pull_request_allowances == null ? [] : [required_pull_request_reviews.value.bypass_pull_request_allowances]
        content {
          apps  = bypass_pull_request_allowances.value.apps
          teams = bypass_pull_request_allowances.value.teams
          users = bypass_pull_request_allowances.value.users
        }
      }
    }
  }

  dynamic "required_status_checks" {
    for_each = var.required_status_checks == null ? [] : [var.required_status_checks]
    content {
      checks = required_status_checks.value.checks
      strict = required_status_checks.value.strict
    }
  }

  dynamic "restrictions" {
    for_each = var.restrictions == null ? [] : [var.restrictions]
    content {
      apps  = restrictions.value.apps
      teams = restrictions.value.teams
      users = restrictions.value.users
    }
  }
}
