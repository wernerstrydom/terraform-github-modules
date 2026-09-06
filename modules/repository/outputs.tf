output "actions_access_level" {
  value = one(module.actions_access_level)
}

output "actions_permissions" {
  value = one(module.actions_permissions)
}

output "actions_secrets" {
  value     = module.actions_secrets
  sensitive = true
}

output "actions_variables" {
  value = module.actions_variables
}

output "allow_auto_merge" {
  description = "Set to 'true' to allow auto-merging pull requests on the repository."
  value       = github_repository.this.allow_auto_merge
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "allow_forking" {
  description = "Set to 'true' to allow private forking on the repository; this is only relevant if the repository is owned by an organization and is private or internal."
  value       = github_repository.this.allow_forking
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "allow_merge_commit" {
  description = "Set to 'false' to disable merge commits on the repository."
  value       = github_repository.this.allow_merge_commit
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "allow_rebase_merge" {
  description = "Set to 'false' to disable rebase merges on the repository."
  value       = github_repository.this.allow_rebase_merge
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "allow_squash_merge" {
  description = "Set to 'false' to disable squash merges on the repository."
  value       = github_repository.this.allow_squash_merge
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "allow_update_branch" {
  description = "Set to 'true' to always suggest updating pull request branches."
  value       = github_repository.this.allow_update_branch
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "archive_on_destroy" {
  description = "Set to 'true' to archive the repository instead of deleting on destroy."
  value       = github_repository.this.archive_on_destroy
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "archived" {
  description = "Specifies if the repository should be archived. Defaults to 'false'. NOTE Currently, the API does not support unarchiving."
  value       = github_repository.this.archived
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "auto_init" {
  description = "Set to 'true' to produce an initial commit in the repository."
  value       = github_repository.this.auto_init
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "autolink_references" {
  value = module.autolink_references
}

output "branch_protections" {
  value = module.branch_protections
}

output "codespaces_secrets" {
  value     = module.codespaces_secrets
  sensitive = true
}

output "collaborators" {
  value = module.collaborators
}

output "custom_properties" {
  value = module.custom_properties
}

output "default_branch" {
  value = one(module.default_branch)
}

output "delete_branch_on_merge" {
  description = "Automatically delete head branch after a pull request is merged. Defaults to 'false'."
  value       = github_repository.this.delete_branch_on_merge
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "dependabot_secrets" {
  value     = module.dependabot_secrets
  sensitive = true
}

output "dependabot_security_updates" {
  value = one(module.dependabot_security_updates)
}

output "deploy_keys" {
  value = module.deploy_keys
}

output "description" {
  description = "A description of the repository."
  value       = github_repository.this.description
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "environments" {
  value     = module.environments
  sensitive = true
}

output "etag" {
  value      = github_repository.this.etag
  depends_on = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "files" {
  value = module.files
}

output "fork" {
  description = "Set to 'true' to fork an existing repository."
  value       = github_repository.this.fork
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "full_name" {
  description = "A string of the form 'orgname/reponame'."
  value       = github_repository.this.full_name
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "git_clone_url" {
  description = "URL that can be provided to 'git clone' to clone the repository anonymously via the git protocol."
  value       = github_repository.this.git_clone_url
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "gitignore_template" {
  description = "Use the name of the template without the extension. For example, 'Haskell'."
  value       = github_repository.this.gitignore_template
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "has_discussions" {
  description = "Set to 'true' to enable GitHub Discussions on the repository. Defaults to 'false'."
  value       = github_repository.this.has_discussions
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "has_issues" {
  description = "Set to 'true' to enable the GitHub Issues features on the repository"
  value       = github_repository.this.has_issues
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "has_projects" {
  description = "Set to 'true' to enable the GitHub Projects features on the repository. Per the GitHub documentation when in an organization that has disabled repository projects it will default to 'false' and will otherwise default to 'true'. If you specify 'true' when it has been disabled it will return an error."
  value       = github_repository.this.has_projects
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "has_wiki" {
  description = "Set to 'true' to enable the GitHub Wiki features on the repository."
  value       = github_repository.this.has_wiki
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "homepage_url" {
  description = "URL of a page describing the project."
  value       = github_repository.this.homepage_url
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "html_url" {
  description = "URL to the repository on the web."
  value       = github_repository.this.html_url
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "http_clone_url" {
  description = "URL that can be provided to 'git clone' to clone the repository via HTTPS."
  value       = github_repository.this.http_clone_url
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "id" {
  value      = github_repository.this.id
  depends_on = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "is_template" {
  description = "Set to 'true' to tell GitHub that this is a template repository."
  value       = github_repository.this.is_template
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "issue_labels" {
  value = module.issue_labels
}

output "license_template" {
  description = "Use the name of the template without the extension. For example, 'mit' or 'mpl-2.0'."
  value       = github_repository.this.license_template
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "merge_commit_message" {
  description = "Can be 'PR_BODY', 'PR_TITLE', or 'BLANK' for a default merge commit message."
  value       = github_repository.this.merge_commit_message
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "merge_commit_title" {
  description = "Can be 'PR_TITLE' or 'MERGE_MESSAGE' for a default merge commit title."
  value       = github_repository.this.merge_commit_title
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "milestones" {
  value = module.milestones
}

output "name" {
  description = "The name of the repository."
  value       = github_repository.this.name
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "node_id" {
  description = "GraphQL global node id for use with v4 API."
  value       = github_repository.this.node_id
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "pages" {
  value = one(module.pages)
}

output "primary_language" {
  value      = github_repository.this.primary_language
  depends_on = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "repo_id" {
  description = "GitHub ID for the repository."
  value       = github_repository.this.repo_id
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "rulesets" {
  value = module.rulesets
}

output "source_owner" {
  description = "The owner of the source repository to fork from."
  value       = github_repository.this.source_owner
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "source_repo" {
  description = "The name of the source repository to fork from."
  value       = github_repository.this.source_repo
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "squash_merge_commit_message" {
  description = "Can be 'PR_BODY', 'COMMIT_MESSAGES', or 'BLANK' for a default squash merge commit message."
  value       = github_repository.this.squash_merge_commit_message
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "squash_merge_commit_title" {
  description = "Can be 'PR_TITLE' or 'COMMIT_OR_PR_TITLE' for a default squash merge commit title."
  value       = github_repository.this.squash_merge_commit_title
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "ssh_clone_url" {
  description = "URL that can be provided to 'git clone' to clone the repository via SSH."
  value       = github_repository.this.ssh_clone_url
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "svn_url" {
  description = "URL that can be provided to 'svn checkout' to check out the repository via GitHub's Subversion protocol emulation."
  value       = github_repository.this.svn_url
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "topics" {
  description = "The list of topics of the repository."
  value       = github_repository.this.topics
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "visibility" {
  description = "Can be 'public' or 'private'. If your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+, visibility can also be 'internal'."
  value       = github_repository.this.visibility
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "vulnerability_alerts" {
  value = one(module.vulnerability_alerts)
}

output "web_commit_signoff_required" {
  description = "Require contributors to sign off on web-based commits."
  value       = github_repository.this.web_commit_signoff_required
  depends_on  = [module.collaborators, module.webhooks, module.deploy_keys, module.environments, module.actions_secrets, module.actions_variables, module.dependabot_secrets, module.codespaces_secrets, module.branch_protections, module.rulesets, module.custom_properties, module.autolink_references, module.files, module.issue_labels, module.milestones, module.pages, module.dependabot_security_updates, module.vulnerability_alerts, module.actions_permissions, module.workflow_permissions, module.actions_access_level, module.default_branch]
}

output "webhooks" {
  value = module.webhooks
}

output "workflow_permissions" {
  value = one(module.workflow_permissions)
}
