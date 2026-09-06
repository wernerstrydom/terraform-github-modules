output "enforcement" {
  description = "The enforcement level of the ruleset. `evaluate` allows admins to test rules before enforcing them. Possible values are `disabled`, `active`, and `evaluate`. Note: `evaluate` is only available for Enterprise plans."
  value       = github_organization_ruleset.this.enforcement
}

output "etag" {
  description = "An etag representing the ruleset for caching purposes."
  value       = github_organization_ruleset.this.etag
}

output "id" {
  value = github_organization_ruleset.this.id
}

output "name" {
  description = "The name of the ruleset."
  value       = github_organization_ruleset.this.name
}

output "node_id" {
  description = "GraphQL global node id for use with v4 API."
  value       = github_organization_ruleset.this.node_id
}

output "ruleset_id" {
  description = "GitHub ID for the ruleset."
  value       = github_organization_ruleset.this.ruleset_id
}

output "target" {
  description = "The target of the ruleset. Possible values are branch, tag and push."
  value       = github_organization_ruleset.this.target
}
