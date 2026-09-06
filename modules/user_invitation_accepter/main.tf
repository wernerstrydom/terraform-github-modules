resource "github_user_invitation_accepter" "this" {
  allow_empty_id = var.allow_empty_id
  invitation_id  = var.invitation_id
}
