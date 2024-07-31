terraform {
  required_version = ">= 1.5.7"
}

provider "google" {
  project = var.project_id
}

module "osdu" {
  source  = "git::https://community.opengroup.org/osdu/platform/deployment-and-operations/infra-gcp-provisioning.git//modules/osdu?ref=okosse"

  project_id                  = var.project_id
  admin_user_email            = var.admin_user_email
}
