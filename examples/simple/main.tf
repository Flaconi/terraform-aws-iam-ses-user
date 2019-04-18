module "iam_ses_user_enabled" {
  source                  = "../../"
  user_name               = "testing-iam-ses-user"
  user_policy_name_prefix = "UserDirectlyAttachedSESPolicy"

  tags = {
    Name  = "testing-iam-ses-user"
    Owner = "Terraform"
  }
}

module "iam_ses_user_disabled" {
  source    = "../../"
  enabled   = false
  user_name = "testing-iam-ses-user"

  tags = {
    Name  = "testing-iam-ses-user"
    Owner = "Terraform"
  }
}
