output "this_user_name_enabled" {
  value       = "${module.iam_ses_user_enabled.this_user_name}"
  description = "IAM user name"
}

output "this_user_arn_enabled" {
  value       = "${module.iam_ses_user_enabled.this_user_arn}"
  description = "ARN of the IAM user"
}

output "this_access_key_enabled" {
  value       = "${module.iam_ses_user_enabled.this_access_key}"
  description = "IAM Access Key of the created user, used as the STMP user name"
}

output "this_ses_smtp_password_enabled" {
  value       = "${module.iam_ses_user_enabled.this_ses_smtp_password}"
  description = "The secret access key converted into an SES SMTP password"
  sensitive   = true
}

output "this_user_name_disabled" {
  value       = "${module.iam_ses_user_disabled.this_user_name}"
  description = "IAM user name"
}

output "this_user_arn_disabled" {
  value       = "${module.iam_ses_user_disabled.this_user_arn}"
  description = "ARN of the IAM user"
}

output "this_access_key_disabled" {
  value       = "${module.iam_ses_user_disabled.this_access_key}"
  description = "IAM Access Key of the created user, used as the STMP user name"
}

output "this_ses_smtp_password_disabled" {
  value       = "${module.iam_ses_user_disabled.this_ses_smtp_password}"
  description = "The secret access key converted into an SES SMTP password"
  sensitive   = true
}
