resource "google_project_service" "apis" {
  for_each = toset(local.apis)
  project  = local.billing_export_project_id
  service  = each.value
  timeouts {
    create = "30m"
    update = "40m"
  }
  disable_dependent_services = true
}