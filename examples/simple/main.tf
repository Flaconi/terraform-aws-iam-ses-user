module "iam_ses_user" {
  source = "../../"
  name   = "testing-iam-ses-user"

  tags = {
    Name  = "testing-iam-ses-user"
    Owner = "Terraform"
  }
}
