terraform {
  required_version = ">= 1.5.7"
}

provider "google" {
  project = var.project_id
  region  = var.project_region
  zone    = var.project_zone
}

module "osdu" {
  source  = "git::https://community.opengroup.org/osdu/platform/deployment-and-operations/infra-gcp-provisioning.git//modules/osdu?ref=v0.26.2"

  project_id                  = var.project_id
  admin_user_email            = var.admin_user_email
}
