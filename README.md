# Terraform Modules Repository

The IntermexWire Terraform Module repo provides an approach to deploying and maintaining a consistent Infrastructure-as-Code (IaC) with reusable modules.

![GitHub top language](https://img.shields.io/github/languages/top/IntermexWire/terraform-modules)

![GitHub last commit (branch)](https://img.shields.io/github/last-commit/IntermexWire/terraform-modules/main?logo=github&label=Last%20Main%20branch%20commit)
[![GitHub commit activity (branch)](https://img.shields.io/github/commit-activity/w/IntermexWire/terraform-modules/main?label=Main%20branch%20commits)](https://github.com/IntermexWire/terraform-modules/commit/main)

[![GitHub Release Date](https://img.shields.io/github/release-date/IntermexWire/terraform-modules)](https://github.com/IntermexWire/terraform-modules/releases)
![GitHub Release](https://img.shields.io/github/v/release/IntermexWire/terraform-modules)
[![GitHub Tag](https://img.shields.io/github/v/tag/IntermexWire/terraform-modules?sort=semver&link=https%3A%2F%2Fgithub.com%2FIntermexWire%2Fterraform-modules%2Ftags)](https://github.com/IntermexWire/terraform-modules/tree/v0.0.1)

[![GitHub Actions Workflow Status](https://img.shields.io/github/actions/workflow/status/IntermexWire/terraform-modules/terraform-validate-lint.yml?branch=main&label=Merge%20Workflow%20Status)](https://github.com/IntermexWire/terraform-modules/actions)

![GitHub Repo stars](https://img.shields.io/github/stars/IntermexWire/terraform-modules)
![GitHub forks](https://img.shields.io/github/forks/IntermexWire/terraform-modules)
![GitHub watchers](https://img.shields.io/github/watchers/IntermexWire/terraform-modules)

## Our Goals:
* We subcribe to the KISS (Keep it simple, stupid!) 
* Keep code DRY (Don't Repeat Yourself).
* Provide rapid infrastructure deployment.

## Contributing
If you want to contribute to this repository, feel free to fork it. Upon syncing to our main branch our GitHub Workflow will check your config with [TF Lint](https://github.com/terraform-linters/tflint)

    Understanding TFLint Output
    TFLint categorizes its output into three types: Errors, Warnings, and Notices.

    - Errors: These are potential issues that could prevent your Terraform configuration from working as expected. You should fix these before applying your configuration.

    - Warnings: These are potential issues that might not prevent your Terraform configuration from working, but could lead to unexpected behavior. It's a good idea to fix these if possible.

    - Notices: These are potential areas for improvement or optimization. They won't prevent your Terraform configuration from working, but addressing them could make your configuration more efficient or easier to understand.



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

Please see each modules' README for details.

## Providers
![Static Badge](https://img.shields.io/badge/~%3E1-tf?logo=terraform&label=Terraform&labelColor=purple&color=black)
![Static Badge](https://img.shields.io/badge/~%3E3-azure?logo=microsoftazure&label=Azure&labelColor=blue&color=black)
![Static Badge](https://img.shields.io/badge/~%3E4-cf?logo=cloudflare&label=CloudFlare&labelColor=grey&color=black)

