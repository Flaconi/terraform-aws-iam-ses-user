provider "aws" {
  version = "~> 1.60"
  region  = "eu-central-1"
}

resource "aws_iam_user" "this" {
  count                = "${var.enabled ? 1 : 0}"
  name                 = "${var.user_name}"
  path                 = "${var.path}"
  permissions_boundary = "${var.permissions_boundary}"
  force_destroy        = "${var.force_destroy}"
  tags                 = "${var.tags}"
}

resource "aws_iam_access_key" "this" {
  count   = "${var.enabled ? 1 : 0}"
  user    = "${aws_iam_user.this.name}"
  pgp_key = "${var.pgp_key}"
}

resource "aws_iam_user_policy" "this" {
  count       = "${var.enabled ? 1 : 0}"
  name_prefix = "${var.user_policy_name_prefix}"
  user        = "${aws_iam_user.this.name}"

  policy = <<EOF
{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "ses:SendRawEmail",
            "Resource": "*",
            "Effect": "Allow"
        }
    ]
}
EOF
}
