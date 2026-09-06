output "branch_pattern" {
  description = "The name pattern that branches must match in order to deploy to the environment."
  value       = github_repository_environment_deployment_policy.this.branch_pattern
}

output "environment" {
  description = "The name of the environment."
  value       = github_repository_environment_deployment_policy.this.environment
}

output "id" {
  value = github_repository_environment_deployment_policy.this.id
}

output "policy_id" {
  description = "The ID of the deployment policy."
  value       = github_repository_environment_deployment_policy.this.policy_id
}

output "repository" {
  description = "The name of the GitHub repository."
  value       = github_repository_environment_deployment_policy.this.repository
}

output "repository_id" {
  description = "The ID of the GitHub repository."
  value       = github_repository_environment_deployment_policy.this.repository_id
}

output "tag_pattern" {
  description = "The name pattern that tags must match in order to deploy to the environment."
  value       = github_repository_environment_deployment_policy.this.tag_pattern
}
