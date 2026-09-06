output "etag" {
  value = github_repository_autolink_reference.this.etag
}

output "id" {
  value = github_repository_autolink_reference.this.id
}

output "is_alphanumeric" {
  description = "Whether this autolink reference matches alphanumeric characters. If false, this autolink reference only matches numeric characters."
  value       = github_repository_autolink_reference.this.is_alphanumeric
}

output "key_prefix" {
  description = "This prefix appended by a number will generate a link any time it is found in an issue, pull request, or commit"
  value       = github_repository_autolink_reference.this.key_prefix
}

output "repository" {
  description = "The repository name"
  value       = github_repository_autolink_reference.this.repository
}

output "target_url_template" {
  description = "The template of the target URL used for the links; must be a valid URL and contain `<num>` for the reference number"
  value       = github_repository_autolink_reference.this.target_url_template
}
