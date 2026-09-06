output "can_admins_bypass" {
  description = "Can Admins bypass deployment protections"
  value       = github_repository_environment.this.can_admins_bypass
  depends_on  = [module.secrets, module.variables, module.deployment_policies]
}

output "deployment_policies" {
  value = module.deployment_policies
}

output "environment" {
  description = "The name of the environment."
  value       = github_repository_environment.this.environment
  depends_on  = [module.secrets, module.variables, module.deployment_policies]
}

output "id" {
  value      = github_repository_environment.this.id
  depends_on = [module.secrets, module.variables, module.deployment_policies]
}

output "prevent_self_review" {
  description = "Prevent users from approving workflows runs that they triggered."
  value       = github_repository_environment.this.prevent_self_review
  depends_on  = [module.secrets, module.variables, module.deployment_policies]
}

output "repository" {
  description = "The repository of the environment."
  value       = github_repository_environment.this.repository
  depends_on  = [module.secrets, module.variables, module.deployment_policies]
}

output "repository_id" {
  description = "The ID of the GitHub repository."
  value       = github_repository_environment.this.repository_id
  depends_on  = [module.secrets, module.variables, module.deployment_policies]
}

output "secrets" {
  value     = module.secrets
  sensitive = true
}

output "variables" {
  value = module.variables
}

output "wait_timer" {
  description = "Amount of time to delay a job after the job is initially triggered."
  value       = github_repository_environment.this.wait_timer
  depends_on  = [module.secrets, module.variables, module.deployment_policies]
}
