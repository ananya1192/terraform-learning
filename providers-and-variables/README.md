# Day 02 - Terraform Providers and Variables

## Objective

Understand how Terraform communicates with cloud platforms using providers and learn how to write reusable Terraform configurations using variables, locals, outputs, and resource iteration.

## Concepts Covered

### 1. Terraform Providers

- Understanding Terraform providers and their role.
- Configuring the AWS provider.
- Declaring provider source and version constraints.
- Understanding AWS regions.
- Initializing providers using `terraform init`.

### 2. Input Variables

- Declaring variables using the `variable` block.
- Understanding variable descriptions, types, and default values.
- Using variables in configurations with `var.variable_name`.
- Overriding default values using the `-var` command-line argument.
- Understanding `terraform.tfvars`.

### 3. Variable Data Types

Practised the following Terraform data types:

- `string`
- `number`
- `bool`
- `list(string)`
- `map(string)`
- `set(string)`

### 4. Output Values

- Declaring outputs using the `output` block.
- Referencing resource attributes.
- Displaying selected configuration values.
- Understanding Terraform output values.

### 5. Local Values

- Declaring reusable expressions using the `locals` block.
- Accessing local values using `local.variable_name`.
- Combining input variables and local values.

### 6. Resource Iteration

**count**

- Creating multiple instances of a resource using `count`.
- Accessing resource indexes using `count.index`.
- Using `length()` to determine the number of resource instances.

**for_each**

- Understanding iteration over maps and sets of strings.
- Using `each.key` and `each.value`.
- Understanding the difference between `count` and `for_each`.

## Practical Exercises

### Exercise 1: AWS Provider Configuration

Configured the AWS provider and specified its source, version constraint, and region.

```hcl
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = var.region
}
```

### Exercise 2: Input Variables

Created a `variables.tf` file to define reusable input variables.

```hcl
variable "region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "ap-south-1"
}

variable "environment" {
  type    = string
  default = "development"
}

variable "instance_count" {
  type    = number
  default = 2
}
```

### Exercise 3: Locals and Outputs

Used local values to construct reusable resource names and output blocks to display configuration information.

```hcl
locals {
  project_name  = "terraform-learning"
  resource_name = "${local.project_name}-${var.environment}"
}

output "resource_name" {
  value = local.resource_name
}
```

### Exercise 4: Resource Iteration Using count

Used the built-in `terraform_data` resource to practise creating multiple resource instances without provisioning billable AWS infrastructure.

```hcl
variable "server_names" {
  type    = list(string)
  default = ["web", "app", "db"]
}

resource "terraform_data" "servers" {
  count = length(var.server_names)

  input = var.server_names[count.index]
}

output "server_names" {
  value = terraform_data.servers[*].output
}
```

**Expected resource instances:**

- `terraform_data.servers[0]` - web
- `terraform_data.servers[1]` - app
- `terraform_data.servers[2]` - db

Also explored `for_each` using maps and sets of strings.

## Terraform Commands Practised

| Command | Purpose |
|---|---|
| `terraform init` | Initializes the working directory and downloads required providers |
| `terraform fmt` | Formats Terraform configuration files |
| `terraform validate` | Validates the configuration |
| `terraform plan` | Previews infrastructure changes |
| `terraform output` | Displays output values after apply |

## Key Learnings

- Providers act as plugins that allow Terraform to interact with external platforms.
- Input variables make configurations reusable and customizable.
- Locals help avoid repeating expressions.
- Outputs expose useful information from Terraform configurations.
- `count` uses numeric indexes to manage multiple resource instances.
- `for_each` uses map keys or set elements to identify resource instances.
- Terraform plans show proposed changes before they are applied.

## Outcome

Successfully configured the AWS provider, created reusable Terraform configurations using variables and locals, practised output values, and explored resource iteration using `count` and `for_each`.

All practical resource iteration exercises used Terraform's built-in `terraform_data` resource, avoiding the need to provision billable AWS infrastructure.

---

**Next: Day 03 - AWS Infrastructure Provisioning**