output "this_user_name" {
  value       = "${aws_iam_user.user.name}"
  description = "IAM user name"
}

output "this_user_arn" {
  value       = "${aws_iam_user.user.arn}"
  description = "ARN of the IAM user"
}

output "this_access_key" {
  value       = "${aws_iam_access_key.access_key.id}"
  description = "IAM Access Key of the created user, used as the STMP user name"
}

output "this_ses_smtp_password" {
  value       = "${aws_iam_access_key.access_key.ses_smtp_password}"
  description = "The secret access key converted into an SES SMTP password"
}
