output "etag" {
  value = github_team_repository.this.etag
}

output "id" {
  value = github_team_repository.this.id
}

output "permission" {
  description = "The permissions of team members regarding the repository. Must be one of 'pull', 'triage', 'push', 'maintain', 'admin' or the name of an existing custom repository role within the organisation."
  value       = github_team_repository.this.permission
}

output "repository" {
  description = "The repository to add to the team."
  value       = github_team_repository.this.repository
}

output "team_id" {
  description = "ID or slug of team"
  value       = github_team_repository.this.team_id
}
