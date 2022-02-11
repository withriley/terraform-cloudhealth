locals {
  billing_account_id        = var.billing_account_id
  org_id                    = var.org_id
  billing_export_project_id = var.billing_export_project_id

  permissions = [
    "resourcemanager.projects.get",
    "bigquery.datasets.get",
    "bigquery.jobs.create",
    "bigquery.tables.get",
    "bigquery.tables.getData",
    "compute.disks.get",
    "compute.disks.list",
    "compute.projects.get",
    "compute.regions.get",
    "compute.regions.list",
    "compute.zones.get",
    "compute.zones.list",
    "compute.images.get",
    "compute.images.list",
    "compute.instances.get",
    "compute.instances.list",
    "compute.snapshots.get",
    "compute.snapshots.list",
    "compute.addresses.list",
    "storage.buckets.get",
    "storage.buckets.list",
    "dataproc.clusters.list",
    "container.clusters.list",
    "recommender.computeInstanceMachineTypeRecommendations.get",
    "recommender.computeInstanceMachineTypeRecommendations.list",
    "recommender.computeInstanceMachineTypeRecommendations.update",
    "recommender.locations.get",
    "recommender.locations.list",
    "compute.disks.list"
  ]

  labels = {
    "environment"  = "billing"
    "country"      = "australia"
    "creator"      = "riley"
    "service_name" = "cloudhealth"
  }

  apis = [
    "iam.googleapis.com",
    "bigquery.googleapis.com",
    "compute.googleapis.com",
    "cloudresourcemanager.googleapis.com",
    "storage-component.googleapis.com",
    "recommender.googleapis.com",
    "container.googleapis.com",
    "dataproc.googleapis.com"
  ]
}