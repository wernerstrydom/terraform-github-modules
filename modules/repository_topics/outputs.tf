output "id" {
  value = github_repository_topics.this.id
}

output "repository" {
  description = "The name of the repository. The name is not case sensitive."
  value       = github_repository_topics.this.repository
}

output "topics" {
  description = "An array of topics to add to the repository. Pass one or more topics to replace the set of existing topics. Send an empty array ([]) to clear all topics from the repository. Note: Topic names cannot contain uppercase letters."
  value       = github_repository_topics.this.topics
}
