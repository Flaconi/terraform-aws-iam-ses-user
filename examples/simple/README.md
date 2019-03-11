# Simple example of creating AWS IAM users with SES access


## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```


## Outputs

| Name | Description |
|------|-------------|
| this\_access\_key | IAM Access Key of the created user, used as the STMP user name |
| this\_ses\_smtp\_password | The secret access key converted into an SES SMTP password |
| this\_user\_arn | ARN of the IAM user |
| this\_user\_name | IAM user name |
