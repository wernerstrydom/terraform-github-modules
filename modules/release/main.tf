resource "github_release" "this" {
  body                     = var.body
  discussion_category_name = var.discussion_category_name
  draft                    = var.draft
  generate_release_notes   = var.generate_release_notes
  name                     = var.name
  prerelease               = var.prerelease
  repository               = var.repository
  tag_name                 = var.tag_name
  target_commitish         = var.target_commitish
}
