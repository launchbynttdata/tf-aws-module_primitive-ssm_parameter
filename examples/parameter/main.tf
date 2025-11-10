module "resource_names" {
  source  = "terraform.registry.launch.nttdata.com/module_library/resource_name/launch"
  version = "~> 2.1"

  for_each = var.resource_names_map

  region                  = join("", split("-", each.value.region))
  class_env               = var.class_env
  cloud_resource_type     = each.value.name
  instance_env            = var.instance_env
  instance_resource       = var.instance_resource
  maximum_length          = each.value.max_length
  logical_product_family  = var.logical_product_family
  logical_product_service = var.logical_product_service
}


module "ssm_parameter" {
  source = "../.."

  parameter_name = module.resource_names["secret"][var.resource_names_strategy]
  description    = var.description
  type           = var.type
  tier           = var.tier
  value          = var.value
  overwrite      = true
}
