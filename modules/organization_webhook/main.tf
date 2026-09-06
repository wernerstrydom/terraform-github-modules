resource "github_organization_webhook" "this" {
  active = var.active
  events = var.events

  dynamic "configuration" {
    for_each = var.configuration == null ? [] : [var.configuration]
    content {
      content_type = configuration.value.content_type
      insecure_ssl = configuration.value.insecure_ssl
      secret       = configuration.value.secret
      url          = configuration.value.url
    }
  }
}
