project_name      = "My New Project"
project_id_prefix = "my-project"
org_id            = "your-org-id"
billing_account   = "your-billing-account-id"
region            = "us-central1"
subnets = [
  {
    name   = "subnet-1"
    cidr   = "10.0.1.0/24"
    region = "us-central1"
  },
  {
    name   = "subnet-2"
    cidr   = "10.0.2.0/24"
    region = "us-east1"
  }
]