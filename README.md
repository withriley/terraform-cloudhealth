# Terraform CloudHealth Module

The GitHub module terraform-cloudhealth is a Terraform module for managing infrastructure in Google Cloud Platform (GCP) with CloudHealth.

The module provides a Terraform implementation of the CloudHealth GCP integration. This integration allows CloudHealth to access GCP billing and cost management data, enabling you to monitor and optimize your GCP spending.

The module includes Terraform resources for creating and configuring a Google Cloud Project, BigQuery dataset, and service account for the CloudHealth integration. It also includes Terraform resources for setting up the necessary IAM roles and permissions to allow CloudHealth to access the billing data.

By using this module, you can automate the deployment and configuration of the CloudHealth GCP integration, which can save time and effort compared to manual setup. Additionally, by using Terraform, you can version control and automate the management of your infrastructure, reducing the risk of errors and ensuring consistency across environments.

## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_google"></a> [google](#provider\_google) | n/a |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [google_bigquery_dataset.dataset](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/bigquery_dataset) | resource |
| [google_logging_billing_account_sink.billing](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/logging_billing_account_sink) | resource |
| [google_organization_iam_binding.organization](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_binding) | resource |
| [google_organization_iam_custom_role.cloudhealth](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/organization_iam_custom_role) | resource |
| [google_project_iam_binding.project](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_iam_binding) | resource |
| [google_project_service.apis](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/project_service) | resource |
| [google_service_account.cloudhealthcollector](https://registry.terraform.io/providers/hashicorp/google/latest/docs/resources/service_account) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_billing_account_id"></a> [billing\_account\_id](#input\_billing\_account\_id) | Customer billing account ID | `string` | n/a | yes |
| <a name="input_billing_export_project_id"></a> [billing\_export\_project\_id](#input\_billing\_export\_project\_id) | Project where Billing Exports are to be configured | `string` | n/a | yes |
| <a name="input_org_id"></a> [org\_id](#input\_org\_id) | Customer Org ID | `string` | n/a | yes |

## Outputs

No outputs.
