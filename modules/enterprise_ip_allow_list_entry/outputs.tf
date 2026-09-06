output "created_at" {
  description = "Timestamp of when the entry was created."
  value       = github_enterprise_ip_allow_list_entry.this.created_at
}

output "enterprise_slug" {
  description = "The slug of the enterprise to apply the IP allow list entry to."
  value       = github_enterprise_ip_allow_list_entry.this.enterprise_slug
}

output "id" {
  value = github_enterprise_ip_allow_list_entry.this.id
}

output "ip" {
  description = "An IP address or range of IP addresses in CIDR notation."
  value       = github_enterprise_ip_allow_list_entry.this.ip
}

output "is_active" {
  description = "Whether the entry is currently active."
  value       = github_enterprise_ip_allow_list_entry.this.is_active
}

output "name" {
  description = "An optional name for the IP allow list entry."
  value       = github_enterprise_ip_allow_list_entry.this.name
}

output "updated_at" {
  description = "Timestamp of when the entry was last updated."
  value       = github_enterprise_ip_allow_list_entry.this.updated_at
}
