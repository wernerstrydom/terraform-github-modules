resource "github_actions_hosted_runner" "this" {
  image_gen         = var.image_gen
  image_version     = var.image_version
  maximum_runners   = var.maximum_runners
  name              = var.name
  public_ip_enabled = var.public_ip_enabled
  runner_group_id   = var.runner_group_id
  size              = var.size

  dynamic "image" {
    for_each = var.image == null ? [] : [var.image]
    content {
      id      = image.value.id
      size_gb = image.value.size_gb
      source  = image.value.source
    }
  }

  dynamic "timeouts" {
    for_each = var.timeouts == null ? [] : [var.timeouts]
    content {
      delete = timeouts.value.delete
    }
  }
}
