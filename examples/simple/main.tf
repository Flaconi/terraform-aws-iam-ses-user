provider "aws" {
  region = "eu-central-1"
}

module "iam_ses_user" {
  source = "../../../terraform-aws-iam-ses-user"
  name   = "testing-iam-ses-user"

  tags = {
    Name  = "testing-iam-ses-user"
    Owner = "Terraform"
  }
}
