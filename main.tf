provider "aws" {
  version = "~> 1.60"
  region  = "eu-central-1"
}

resource "aws_iam_user" "user" {
  name                 = "${var.name}"
  path                 = "${var.path}"
  permissions_boundary = "${var.permissions_boundary}"
  force_destroy        = "${var.force_destroy}"
  tags                 = "${var.tags}"
}

resource "aws_iam_access_key" "access_key" {
  user    = "${aws_iam_user.user.name}"
  pgp_key = "${var.pgp_key}"
}
