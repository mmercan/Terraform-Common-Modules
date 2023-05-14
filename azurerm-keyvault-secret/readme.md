# Terraform Module README Placeholder 

Use as much of this template as possible.    
Add additional information as required.


# Module Name

## Overview
Description of the module here 


## Usage

Usage of this module is as follows:

```hcl
module "example" {
	example_var = "example_value"
}
```


## Features

1. Creates X
1. Adds Y
1. etc


## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| | | | | | 


## Outputs

| Name | Description |
|------|-------------|
| | |  


## Requirements

### Software 

- [Terraform](https://www.terraform.io/downloads.html) = 1.2.7


### Providers 

| Name | Version |
|------|---------|
| [azurerm](https://registry.terraform.io/providers/hashicorp/azurerm) | >= 3.22.0 |


### Permissions

This module requires the following Azure AD role: 

- Virtual Machine Contributor
- Storage Blob Data Contributor
- ...

OR 

This module requires the following Azure AD permissions: 

- "Microsoft.Compute/virtualMachines/*"
- "Microsoft.Network/virtualNetworks/subnets/join/action"
- ...