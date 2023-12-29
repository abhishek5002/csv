<!-- BEGIN_TF_DOCS -->

## About

The Terraform code implemented in this scenario facilitates the creation and administration of routes within the route table using a CSV file.

## Requirements

| Name                                                               | Version |
| ------------------------------------------------------------------ | ------- |
| <a name="requirement_azurerm"></a> [azurerm](#requirement_azurerm) | ~>3.80  |

## Providers

| Name                                                         | Version |
| ------------------------------------------------------------ | ------- |
| <a name="provider_azurerm"></a> [azurerm](#provider_azurerm) | ~>3.80  |
| <a name="provider_random"></a> [random](#provider_random)    | n/a     |

## Modules

No modules.

## Resources

| Name                                                                                                                          | Type     |
| ----------------------------------------------------------------------------------------------------------------------------- | -------- |
| [azurerm_resource_group.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/resource_group) | resource |
| [azurerm_route.vnet_routes](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/route)            | resource |
| [azurerm_route_table.this](https://registry.terraform.io/providers/hashicorp/azurerm/latest/docs/resources/route_table)       | resource |
| [random_string.random](https://registry.terraform.io/providers/hashicorp/random/latest/docs/resources/string)                 | resource |

## Inputs

| Name                                                                                                                     | Description                                                       | Type          | Default        | Required |
| ------------------------------------------------------------------------------------------------------------------------ | ----------------------------------------------------------------- | ------------- | -------------- | :------: |
| <a name="input_disable_bgp_route_propagation"></a> [disable_bgp_route_propagation](#input_disable_bgp_route_propagation) | Set route propergation on route table                             | `string`      | `true`         |    no    |
| <a name="input_location"></a> [location](#input_location)                                                                | Specifies the supported Azure location where the resource exists. | `string`      | `"SouthIndia"` |    no    |
| <a name="input_tags"></a> [tags](#input_tags)                                                                            | A mapping of tags to assign to the resource.                      | `map(string)` | `null`         |    no    |

## Outputs

| Name                                            | Description                           |
| ----------------------------------------------- | ------------------------------------- |
| <a name="output_id"></a> [id](#output_id)       | Specifies the id of the Route table   |
| <a name="output_name"></a> [name](#output_name) | Specifies the name of the Route table |

<!-- END_TF_DOCS -->
