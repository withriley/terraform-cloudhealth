# Terraform CloudHealth Module
Bootstrap For CloudHealth Configuration In Client GCP Orgs/Accounts
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
