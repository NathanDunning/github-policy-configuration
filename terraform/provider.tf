terraform {
  required_providers {
    github = {
      source  = "integrations/github"
      version = "4.29.0"
    }
  }
}

provider "github" {
  # Configuration options
  token = var.token
  owner = var.organization_name
}
