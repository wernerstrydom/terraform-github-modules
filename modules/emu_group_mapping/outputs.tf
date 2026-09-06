output "etag" {
  value = github_emu_group_mapping.this.etag
}

output "group_id" {
  description = "Integer corresponding to the external group ID to be linked."
  value       = github_emu_group_mapping.this.group_id
}

output "group_name" {
  description = "Name of the external group."
  value       = github_emu_group_mapping.this.group_name
}

output "id" {
  value = github_emu_group_mapping.this.id
}

output "team_id" {
  description = "ID of the GitHub team."
  value       = github_emu_group_mapping.this.team_id
}

output "team_slug" {
  description = "Slug of the GitHub team."
  value       = github_emu_group_mapping.this.team_slug
}
