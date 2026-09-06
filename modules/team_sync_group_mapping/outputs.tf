output "etag" {
  value = github_team_sync_group_mapping.this.etag
}

output "id" {
  value = github_team_sync_group_mapping.this.id
}

output "team_slug" {
  description = "Slug of the team."
  value       = github_team_sync_group_mapping.this.team_slug
}
