provider "aws" {
  version = "~> 1.60"
  region  = "eu-central-1"
}

resource "aws_iam_user" "this" {
  count                = "${var.enabled ? 1 : 0}"
  name                 = "${var.name}"
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
