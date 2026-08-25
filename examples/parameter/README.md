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
<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | ~> 1.5 |
| <a name="requirement_aws"></a> [aws](#requirement\_aws) | ~> 5.0 |

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_resource_names"></a> [resource\_names](#module\_resource\_names) | terraform.registry.launch.nttdata.com/module_library/resource_name/launch | ~> 2.1 |
| <a name="module_ssm_parameter"></a> [ssm\_parameter](#module\_ssm\_parameter) | ../.. | n/a |

## Resources

No resources.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_class_env"></a> [class\_env](#input\_class\_env) | (Required) Environment where resource is going to be deployed. For example. dev, qa, uat | `string` | `"sandbox"` | no |
| <a name="input_description"></a> [description](#input\_description) | Description of the parameter | `string` | `null` | no |
| <a name="input_instance_env"></a> [instance\_env](#input\_instance\_env) | Number that represents the instance of the environment. | `number` | `0` | no |
| <a name="input_instance_resource"></a> [instance\_resource](#input\_instance\_resource) | Number that represents the instance of the resource. | `number` | `0` | no |
| <a name="input_logical_product_family"></a> [logical\_product\_family](#input\_logical\_product\_family) | (Required) Name of the product family for which the resource is created.<br/>    Example: org\_name, department\_name. | `string` | `"launch"` | no |
| <a name="input_logical_product_service"></a> [logical\_product\_service](#input\_logical\_product\_service) | (Required) Name of the product service for which the resource is created.<br/>    For example, backend, frontend, middleware etc. | `string` | `"example"` | no |
| <a name="input_resource_names_map"></a> [resource\_names\_map](#input\_resource\_names\_map) | A map of key to resource\_name that will be used by tf-launch-module\_library-resource\_name to generate resource names | <pre>map(object({<br/>    name       = string<br/>    max_length = optional(number, 60)<br/>    region     = optional(string, "eastus2")<br/>  }))</pre> | <pre>{<br/>  "secret": {<br/>    "max_length": 80,<br/>    "name": "scrt",<br/>    "region": "us-east-2"<br/>  }<br/>}</pre> | no |
| <a name="input_resource_names_strategy"></a> [resource\_names\_strategy](#input\_resource\_names\_strategy) | Strategy to use for generating resource names, taken from the outputs of the naming module, e.g. 'standard', 'minimal\_random\_suffix', 'dns\_compliant\_standard', etc. | `string` | `"minimal_random_suffix"` | no |
| <a name="input_tier"></a> [tier](#input\_tier) | Parameter tier to assign. Valid tiers are `Standard` (default), `Advanced`, and `Intelligent-Tiering`. Downgrading an `Advanced` tier to `Standard` will recreate the resource. | `string` | `"Standard"` | no |
| <a name="input_type"></a> [type](#input\_type) | Type of the parameter. Valid types are String, StringList, and SecureString. | `string` | `"String"` | no |
| <a name="input_value"></a> [value](#input\_value) | Value of the parameter. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_parameter_arn"></a> [parameter\_arn](#output\_parameter\_arn) | n/a |
| <a name="output_parameter_name"></a> [parameter\_name](#output\_parameter\_name) | n/a |
| <a name="output_parameter_version"></a> [parameter\_version](#output\_parameter\_version) | n/a |
<!-- END_TF_DOCS -->
