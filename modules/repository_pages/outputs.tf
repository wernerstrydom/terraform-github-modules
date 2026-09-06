output "api_url" {
  description = "The API URL of the GitHub Pages resource."
  value       = github_repository_pages.this.api_url
}

output "build_status" {
  description = "The GitHub Pages site's build status e.g. 'building' or 'built'."
  value       = github_repository_pages.this.build_status
}

output "build_type" {
  description = "The type of GitHub Pages site to build. Can be 'legacy' or 'workflow'."
  value       = github_repository_pages.this.build_type
}

output "cname" {
  description = "The custom domain for the repository."
  value       = github_repository_pages.this.cname
}

output "custom_404" {
  description = "Whether the rendered GitHub Pages site has a custom 404 page."
  value       = github_repository_pages.this.custom_404
}

output "html_url" {
  description = "The absolute URL (with scheme) to the rendered GitHub Pages site."
  value       = github_repository_pages.this.html_url
}

output "https_enforced" {
  description = "Whether the rendered GitHub Pages site will only be served over HTTPS. Requires 'cname' to be set."
  value       = github_repository_pages.this.https_enforced
}

output "id" {
  value = github_repository_pages.this.id
}

output "public" {
  description = "Whether the GitHub Pages site is publicly visible. If set to `true`, the site is accessible to anyone on the internet. If set to `false`, the site will only be accessible to users who have at least `read` access to the repository that published the site."
  value       = github_repository_pages.this.public
}

output "repository" {
  description = "The repository name to configure GitHub Pages for."
  value       = github_repository_pages.this.repository
}

output "repository_id" {
  description = "The ID of the repository to configure GitHub Pages for."
  value       = github_repository_pages.this.repository_id
}
