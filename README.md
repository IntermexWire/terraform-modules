# Terraform Modules Repository

The IntermexWire Terraform Module repo provides an approach to deploying and maintaining a consistent Infrastructure-as-Code (IaC) with reusable modules.

## Our Goals:
* We subcribe to the KISS (Keep it simple, stupid!) 
* Keep code DRY (Don't Repeat Yourself).
* Provide rapid infrastructure deployment.

## Contributing
If you want to contribute to this repository, feel free to fork it. Upon syncing to our main branch our GitHub Workflow will check your config with [TF Lint](https://github.com/terraform-linters/tflint)

## Versioning
This repository uses [Semantic Versioning](https://semver.org/). You can request a specific version of a module by using the ref parameter in the module source URL.

For example, to use version v0.0.1 of the `Azure Resource Group` module, you would set the source like this:

`source = "github.com/IntermexWire/terraform-modules//azure/resource-group?ref=v0.0.1"`

## Getting Started

To use these modules, you'll need to have [Terraform](https://github.com/hashicorp/terraform/releases) version 1.7 or higher installed on your local machine.

:information_source: **Pro Tip:**  
You can use [TFSwitch](https://tfswitch.warrensbox.com/Installation/) - The tfswitch command line tool lets you switch between different versions of terraform.


You can use these modules in your own Terraform configurations by referencing them in a `module` block:

```terraform
module "resource_group" {
  source = "github.com/IntermexWire/terraform-modules//modules/vnet?ref=v0.0.1"

  name     = var.name
  location = var.location
  tags     = var.tags
}
```

Please each modules' 

## Providers
|Name|Version|
|--|--|
| terraform | ~>1.7 |
| azurerm | ~>3 |