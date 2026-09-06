resource "github_team_settings" "this" {
  notify  = var.notify
  team_id = var.team_id

  dynamic "review_request_delegation" {
    for_each = var.review_request_delegation == null ? [] : [var.review_request_delegation]
    content {
      algorithm    = review_request_delegation.value.algorithm
      member_count = review_request_delegation.value.member_count
    }
  }
}
