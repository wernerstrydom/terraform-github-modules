output "id" {
  description = "The hosted runner ID."
  value       = github_actions_hosted_runner.this.id
}

output "image_gen" {
  description = "Whether this runner should be used to generate custom images. Cannot be changed after creation."
  value       = github_actions_hosted_runner.this.image_gen
}

output "image_version" {
  description = "The version of the runner image to deploy. This is relevant only for runners using custom images."
  value       = github_actions_hosted_runner.this.image_version
}

output "last_active_on" {
  description = "Timestamp when the runner was last active."
  value       = github_actions_hosted_runner.this.last_active_on
}

output "machine_size_details" {
  description = "Detailed machine size specifications."
  value       = github_actions_hosted_runner.this.machine_size_details
}

output "maximum_runners" {
  description = "Maximum number of runners to scale up to."
  value       = github_actions_hosted_runner.this.maximum_runners
}

output "name" {
  description = "Name of the hosted runner. Must be between 1 and 64 characters and may only contain upper and lowercase letters a-z, numbers 0-9, '.', '-', and '_'."
  value       = github_actions_hosted_runner.this.name
}

output "platform" {
  description = "Platform of the runner."
  value       = github_actions_hosted_runner.this.platform
}

output "public_ip_enabled" {
  description = "Whether to enable static public IP."
  value       = github_actions_hosted_runner.this.public_ip_enabled
}

output "public_ips" {
  description = "List of public IP ranges assigned to this runner."
  value       = github_actions_hosted_runner.this.public_ips
}

output "runner_group_id" {
  description = "The runner group ID."
  value       = github_actions_hosted_runner.this.runner_group_id
}

output "size" {
  description = "Machine size (e.g., '4-core', '8-core'). Can be updated to scale the runner."
  value       = github_actions_hosted_runner.this.size
}

output "status" {
  description = "Current status of the runner."
  value       = github_actions_hosted_runner.this.status
}
