output "etag" {
  value = github_team_membership.this.etag
}

output "id" {
  value = github_team_membership.this.id
}

output "role" {
  description = "The role of the user within the team. Must be one of 'member' or 'maintainer'."
  value       = github_team_membership.this.role
}

output "team_id" {
  description = "The GitHub team id or the GitHub team slug."
  value       = github_team_membership.this.team_id
}

output "username" {
  description = "The user to add to the team."
  value       = github_team_membership.this.username
}
