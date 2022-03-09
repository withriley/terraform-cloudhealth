# BigQuery Config

resource "google_bigquery_dataset" "dataset" {
  project                     = local.billing_export_project_id
  dataset_id                  = "gcp_billing_export_v1"
  friendly_name               = "bigquery_billing_export"
  description                 = "BigQuery Billing Export"
  location                    = "australia-southeast1"
  default_table_expiration_ms = 3600000
  labels                      = local.labels

  depends_on = [
    google_project_service.apis
  ]
}

resource "google_logging_billing_account_sink" "billing" {
  name            = "bigquery_billing"
  description     = "BigQuery Export for Billing Data"
  billing_account = local.billing_account_id

  # Can export to pubsub, cloud storage, or bigquery
  destination = "bigquery.googleapis.com/projects/${local.billing_export_project_id}/datasets/${google_bigquery_dataset.dataset.dataset_id}"
}

# IAM and Permissions Config

resource "google_organization_iam_custom_role" "cloudhealth" {
  role_id     = "${billing_export_project_id}-cloudhealth"
  org_id      = local.org_id
  title       = "CloudHealth Collector"
  description = "Role to allow CloudHealth access to exports"
  permissions = local.permissions
  stage       = "GA"
}

resource "google_service_account" "cloudhealthcollector" {
  account_id   = "cloudhealthcollector"
  project      = local.billing_export_project_id
  display_name = "CloudHealth Collector"
}

resource "google_project_iam_binding" "project" {
  project = local.billing_export_project_id
  role    = google_organization_iam_custom_role.cloudhealth.id

  members = [
    "serviceAccount:${google_service_account.cloudhealthcollector.email}"
  ]
}

resource "google_organization_iam_binding" "organization" {
  org_id = local.org_id
  role   = google_organization_iam_custom_role.cloudhealth.id

  members = [
    "serviceAccount:${google_service_account.cloudhealthcollector.email}"
  ]
}

