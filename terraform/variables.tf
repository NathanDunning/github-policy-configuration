variable "token" {
  type        = string
  sensitive   = true
  description = "GitHub Personal Access Token"
}

variable "organization_name" {
  type        = string
  description = "Name of your GitHub Organization"
}

variable "repositories" {
  type        = set(string)
  description = "List of repositories to apply the branch protection to"
}

variable "branch_name" {
  type        = string
  description = "Name of the branch to protect"
}

variable "minimum_reviewers_required" {
  type        = number
  description = "Minimum number of reviewers required to approve a pull request"
}

variable "required_status_checks" {
  type        = set(string)
  description = "List of status checks that require passing before a pull request can be merged"
  default     = null
}

