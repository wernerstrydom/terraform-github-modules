output "id" {
  value = github_team_members.this.id
}

output "team_slug" {
  description = "Slug of the GitHub team to manage membership for."
  value       = github_team_members.this.team_slug
}
