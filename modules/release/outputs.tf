output "assets_url" {
  description = "The URL for the release assets."
  value       = github_release.this.assets_url
}

output "body" {
  description = "Text describing the contents of the tag."
  value       = github_release.this.body
}

output "created_at" {
  description = "The date and time the release was created."
  value       = github_release.this.created_at
}

output "discussion_category_name" {
  description = "If specified, a discussion of the specified category is created and linked to the release. The value must be a category that already exists in the repository."
  value       = github_release.this.discussion_category_name
}

output "draft" {
  description = "Set to 'false' to create a published release."
  value       = github_release.this.draft
}

output "etag" {
  value = github_release.this.etag
}

output "generate_release_notes" {
  description = "Set to 'true' to automatically generate the name and body for this release. If 'name' is specified, the specified name will be used; otherwise, a name will be automatically generated. If 'body' is specified, the body will be pre-pended to the automatically generated notes."
  value       = github_release.this.generate_release_notes
}

output "html_url" {
  description = "The HTML URL for the release."
  value       = github_release.this.html_url
}

output "id" {
  value = github_release.this.id
}

output "name" {
  description = "The name of the release."
  value       = github_release.this.name
}

output "node_id" {
  description = "The node ID of the release."
  value       = github_release.this.node_id
}

output "prerelease" {
  description = "Set to 'false' to identify the release as a full release."
  value       = github_release.this.prerelease
}

output "published_at" {
  description = "The date and time the release was published."
  value       = github_release.this.published_at
}

output "release_id" {
  description = "The ID of the release."
  value       = github_release.this.release_id
}

output "repository" {
  description = "The name of the repository."
  value       = github_release.this.repository
}

output "tag_name" {
  description = "The name of the tag."
  value       = github_release.this.tag_name
}

output "tarball_url" {
  description = "The URL for the tarball of the release."
  value       = github_release.this.tarball_url
}

output "target_commitish" {
  description = "The branch name or commit SHA the tag is created from."
  value       = github_release.this.target_commitish
}

output "upload_url" {
  description = "The URL for the uploaded assets of release."
  value       = github_release.this.upload_url
}

output "url" {
  description = "The URL for the release."
  value       = github_release.this.url
}

output "zipball_url" {
  description = "The URL for the zipball of the release."
  value       = github_release.this.zipball_url
}
