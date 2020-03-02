# AWS IAM SES user

[![Build Status](https://travis-ci.com/Flaconi/terraform-aws-iam-ses-user.svg?branch=master)](https://travis-ci.com/Flaconi/terraform-aws-iam-ses-user)
[![Tag](https://img.shields.io/github/tag/Flaconi/terraform-aws-iam-ses-user.svg)](https://github.com/Flaconi/terraform-aws-iam-ses-user/releases)
[![license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)

Terraform module that handles IAM users which are able to send e-mails via AWS SES

## Examples

Check the [examples](examples) directory.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.49.0 |

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

| Name | Version |
|------|---------|
| aws | ~> 2.49.0 |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:-----:|
| tags | Map holding the resource tags in a key-value format | `map(string)` | n/a | yes |
| user\_name | Name of the IAM user | `string` | n/a | yes |
| enabled | Set to false to prevent the module from creating any resources | `bool` | `true` | no |
| force\_destroy | Use this to be able to also delete IAM users that were not created with Terraform and have IAM access keys, MFA devices, etc. | `string` | `"false"` | no |
| path | Path in which to create the user | `string` | `"/"` | no |
| permissions\_boundary | The ARN of the policy that is used to set the permissions boundary for the user | `string` | `""` | no |
| pgp\_key | Either a base-64 encoded PGP public key, or a keybase username in the form keybase:some\_person\_that\_exists | `string` | `""` | no |
| user\_policy\_name\_prefix | Name prefix of the IAM policy that is assigned to the user | `string` | `"SESSendOnlyAccess"` | no |

## Outputs

| Name | Description |
|------|-------------|
| this\_access\_key | IAM Access Key of the created user, used as the STMP user name |
| this\_ses\_smtp\_password | The secret access key converted into an SES SMTP password |
| this\_user\_arn | ARN of the IAM user |
| this\_user\_name | IAM user name |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## License

[MIT](LICENSE)

Copyright (c) 2018 [Flaconi GmbH](https://github.com/Flaconi)
