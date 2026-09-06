output "enforcement" {
  description = "Possible values for Enforcement are `disabled`, `active`, `evaluate`. Note: `evaluate` is currently only supported for owners of type `organization`."
  value       = github_repository_ruleset.this.enforcement
}

output "etag" {
  value = github_repository_ruleset.this.etag
}

output "id" {
  value = github_repository_ruleset.this.id
}

output "name" {
  description = "The name of the ruleset."
  value       = github_repository_ruleset.this.name
}

output "node_id" {
  description = "GraphQL global node id for use with v4 API."
  value       = github_repository_ruleset.this.node_id
}

output "repository" {
  description = "Name of the repository to apply ruleset to."
  value       = github_repository_ruleset.this.repository
}

output "ruleset_id" {
  description = "GitHub ID for the ruleset."
  value       = github_repository_ruleset.this.ruleset_id
}

output "target" {
  description = "Possible values are branch, push and tag"
  value       = github_repository_ruleset.this.target
}
