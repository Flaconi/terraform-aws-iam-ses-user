# Simple example of creating AWS IAM users with SES access


## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```


## Outputs

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Providers

No provider.

## Inputs

No input.

## Outputs

| Name | Description |
|------|-------------|
| this\_access\_key\_disabled | IAM Access Key of the created user, used as the STMP user name |
| this\_access\_key\_enabled | IAM Access Key of the created user, used as the STMP user name |
| this\_ses\_smtp\_password\_disabled | The secret access key converted into an SES SMTP password |
| this\_ses\_smtp\_password\_enabled | The secret access key converted into an SES SMTP password |
| this\_user\_arn\_disabled | ARN of the IAM user |
| this\_user\_arn\_enabled | ARN of the IAM user |
| this\_user\_name\_disabled | IAM user name |
| this\_user\_name\_enabled | IAM user name |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
