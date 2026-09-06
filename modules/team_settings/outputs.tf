output "id" {
  value = github_team_settings.this.id
}

output "notify" {
  description = "Whether to notify the entire team when at least one member is also assigned to the pull request."
  value       = github_team_settings.this.notify
}

output "team_id" {
  description = "The GitHub team id or the GitHub team slug."
  value       = github_team_settings.this.team_id
}

output "team_slug" {
  description = "The slug of the Team within the Organization."
  value       = github_team_settings.this.team_slug
}

output "team_uid" {
  description = "The unique ID of the Team on GitHub. Corresponds to the ID of the 'github_team_settings' resource."
  value       = github_team_settings.this.team_uid
}
