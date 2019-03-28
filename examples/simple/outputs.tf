output "this_user_name" {
  value       = "${module.iam_ses_user.this_user_name}"
  description = "IAM user name"
}

output "this_user_arn" {
  value       = "${module.iam_ses_user.this_user_arn}"
  description = "ARN of the IAM user"
}

output "this_access_key" {
  value       = "${module.iam_ses_user.this_access_key}"
  description = "IAM Access Key of the created user, used as the STMP user name"
}

output "this_ses_smtp_password" {
  value       = "${module.iam_ses_user.this_ses_smtp_password}"
  description = "The secret access key converted into an SES SMTP password"
  sensitive   = true
}
