resource "github_branch_protection_v3" "main" {
  for_each = data.github_repository.main

  repository                      = each.value.name
  branch                          = var.branch_name
  enforce_admins                  = true
  require_conversation_resolution = true

  dynamic "required_status_checks" {
    for_each = var.required_status_checks != null ? ["true"] : []

    content {
      strict   = true
      contexts = var.required_status_checks
    }
  }

  required_pull_request_reviews {
    dismiss_stale_reviews           = true
    required_approving_review_count = var.minimum_reviewers_required
  }
}
