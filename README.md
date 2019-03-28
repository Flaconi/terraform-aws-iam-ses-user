# AWS IAM SES user

[![Build Status](https://travis-ci.com/Flaconi/terraform-aws-iam-ses-user.svg?branch=master)](https://travis-ci.com/Flaconi/terraform-aws-iam-ses-user)
[![Tag](https://img.shields.io/github/tag/Flaconi/terraform-aws-iam-ses-user.svg)](https://github.com/Flaconi/terraform-aws-iam-ses-user/releases)
[![license](http://img.shields.io/badge/license-MIT-brightgreen.svg)](http://opensource.org/licenses/MIT)

Terraform module that handles IAM users which are able to send e-mails via AWS SES

## Examples

Check the [examples](examples) directory.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| force\_destroy | Use this to be able to also delete IAM users that were not created with Terraform and have IAM access keys, MFA devices, etc. | string | `"false"` | no |
| name | Name of the IAM user | string | n/a | yes |
| path | Path in which to create the user | string | `"/"` | no |
| permissions\_boundary | The ARN of the policy that is used to set the permissions boundary for the user | string | `""` | no |
| pgp\_key | Either a base-64 encoded PGP public key, or a keybase username in the form keybase:some_person_that_exists | string | `""` | no |
| tags | Map holding the resource tags in a key-value format | map | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| this\_access\_key | IAM Access Key of the created user, used as the STMP user name |
| this\_ses\_smtp\_password | The secret access key converted into an SES SMTP password |
| this\_user\_arn | ARN of the IAM user |
| this\_user\_name | IAM user name |

## License

[MIT](LICENSE)

Copyright (c) 2018 [Flaconi GmbH](https://github.com/Flaconi)
