module "iam_ses_user_enabled" {
  source = "../../"
  name   = "testing-iam-ses-user"

  tags = {
    Name  = "testing-iam-ses-user"
    Owner = "Terraform"
  }
}

module "iam_ses_user_disabled" {
  source  = "../../"
  enabled = false
  name    = "testing-iam-ses-user"

  tags = {
    Name  = "testing-iam-ses-user"
    Owner = "Terraform"
  }
}
