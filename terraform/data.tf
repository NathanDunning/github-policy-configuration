data "github_repository" "main" {
  for_each = var.repositories

  full_name = "${var.organization_name}/${each.value}"
}
