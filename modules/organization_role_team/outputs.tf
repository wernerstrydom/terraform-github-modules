output "id" {
  value = github_organization_role_team.this.id
}

output "role_id" {
  description = "The ID of the organization role."
  value       = github_organization_role_team.this.role_id
}

output "team_slug" {
  description = "The slug of the team name."
  value       = github_organization_role_team.this.team_slug
}
