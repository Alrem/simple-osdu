/**
*  Copyright 2023 Google LLC
*  Copyright 2023 EPAM
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*/

output "ingress_ip" {
  value = module.osdu.ingress_ip
}

output "ingress_domain" {
  value = module.osdu.ingress_domain
}

output "dags_folder" {
  value = module.osdu.dags_folder
}

output "airflow_url" {
  value = module.osdu.airflow_url
}

output "GKE_version" {
  value = module.osdu.gke_version
}

output "helm_custom_values_file_path" {
  value = module.osdu.helm_values_filename
}

output "osdu_services_endpoints" {
  value = {
    config_endpoint        = "https://${module.osdu.ingress_domain}/api/config/v1/info",
    crs_catalog_endpoint   = "https://${module.osdu.ingress_domain}/api/crs/catalog/v2/info",
    crs_converter_endpoint = "https://${module.osdu.ingress_domain}/api/crs/converter/v2/info",
    dataset_endpoint       = "https://${module.osdu.ingress_domain}/api/dataset/v1/info",
    eds_dms_endpoint       = "https://${module.osdu.ingress_domain}/api/eds/v1/info",
    entitlements_endpoint  = "https://${module.osdu.ingress_domain}/api/entitlements/v2/info",
    file_endpoint          = "https://${module.osdu.ingress_domain}/api/file/v2/info",
    indexer_endpoint       = "https://${module.osdu.ingress_domain}/api/indexer/v2/info",
    legal_endpoint         = "https://${module.osdu.ingress_domain}/api/legal/v1/info",
    notification_endpoint  = "https://${module.osdu.ingress_domain}/api/notification/v1/info",
    partition_endpoint     = "https://${module.osdu.ingress_domain}/api/partition/v1/info",
    policy_endpoint        = "https://${module.osdu.ingress_domain}/api/policy/v1/health",
    register_endpoint      = "https://${module.osdu.ingress_domain}/api/register/v1/info",
    schema_endpoint        = "https://${module.osdu.ingress_domain}/api/schema-service/v1/info",
    search_endpoint        = "https://${module.osdu.ingress_domain}/api/search/v2/info",
    secret_endpoint        = "https://${module.osdu.ingress_domain}/api/secret/v1/info",
    seismic_store_endpoint = "https://${module.osdu.ingress_domain}/api/seismic-store/v3/svcstatus",
    storage_endpoint       = "https://${module.osdu.ingress_domain}/api/storage/v2/info",
    unit_endpoint          = "https://${module.osdu.ingress_domain}/api/unit/v3/info",
    well_delivery_endpoint = "https://${module.osdu.ingress_domain}/api/well-delivery/info",
    wellbore_endpoint      = "https://${module.osdu.ingress_domain}/api/os-wellbore-ddms/ddms/v2/about",
    workflow_endpoint      = "https://${module.osdu.ingress_domain}/api/workflow/v1/info"
  }
}
