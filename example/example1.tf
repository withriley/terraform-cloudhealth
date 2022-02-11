module "cloudhealth-terraform" {
    source = "../"
    billing_account_id        = "000000-000000-000000"
    org_id                    = "000000000000"
    billing_export_project_id = "example-billing-project"
}