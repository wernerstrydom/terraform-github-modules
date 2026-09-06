resource "github_repository_topics" "this" {
  repository = var.repository
  topics     = var.topics
}
