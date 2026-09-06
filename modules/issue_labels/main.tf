resource "github_issue_labels" "this" {
  repository = var.repository

  dynamic "label" {
    for_each = var.label == null ? [] : var.label
    content {
      color       = label.value.color
      description = label.value.description
      name        = label.value.name
      url         = label.value.url
    }
  }
}
