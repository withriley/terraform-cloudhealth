module "cloudhealth-terraform" {
    source = "github.com/withriley/terraform-cloudhealth"
    billing_account_id        = "000000-000000-000000"
    org_id                    = "000000000000"
    billing_export_project_id = "example-billing-project"
}