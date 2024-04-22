# parameter

## Requirements

No requirements.

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ssm_parameter"></a> [ssm\_parameter](#module\_ssm\_parameter) | ../.. | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_description"></a> [description](#input\_description) | Description of the parameter | `string` | `null` | no |
| <a name="input_parameter_name"></a> [parameter\_name](#input\_parameter\_name) | Name of the parameter. If the name contains a path (any forward slashes), it must be fully qualified with a leading forward slash. | `string` | n/a | yes |
| <a name="input_tier"></a> [tier](#input\_tier) | Parameter tier to assign. Valid tiers are Standard (default), Advanced, and Intelligent-Tiering. Downgrading an advanced tier to Standard will recreate the resource. | `string` | `"Standard"` | no |
| <a name="input_type"></a> [type](#input\_type) | Type of the parameter. Valid types are String, StringList, and SecureString. | `string` | `"String"` | no |
| <a name="input_value"></a> [value](#input\_value) | Value of the parameter. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_parameter_arn"></a> [parameter\_arn](#output\_parameter\_arn) | n/a |
| <a name="output_parameter_name"></a> [parameter\_name](#output\_parameter\_name) | n/a |
<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 1.5.0, <= 1.5.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | >= 5.14 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_ssm_parameter"></a> [ssm\_parameter](#module\_ssm\_parameter) | ../.. | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_parameter_name"></a> [parameter\_name](#input\_parameter\_name) | Name of the parameter. If the name contains a path (any forward slashes), it must be fully qualified with a leading forward slash. | `string` | n/a | yes |
| <a name="input_type"></a> [type](#input\_type) | Type of the parameter. Valid types are String, StringList, and SecureString. | `string` | `"String"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the parameter | `string` | `null` | no |
| <a name="input_value"></a> [value](#input\_value) | Value of the parameter. | `string` | n/a | yes |
| <a name="input_tier"></a> [tier](#input\_tier) | Parameter tier to assign. Valid tiers are `Standard` (default), `Advanced`, and `Intelligent-Tiering`. Downgrading an `Advanced` tier to `Standard` will recreate the resource. | `string` | `"Standard"` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_parameter_arn"></a> [parameter\_arn](#output\_parameter\_arn) | n/a |
| <a name="output_parameter_name"></a> [parameter\_name](#output\_parameter\_name) | n/a |
| <a name="output_parameter_version"></a> [parameter\_version](#output\_parameter\_version) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
