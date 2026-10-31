# 01 - Terraform Basics

## Objective

Understand Terraform fundamentals and learn how Terraform manages infrastructure using configuration files.

## Concepts Covered

- Infrastructure as Code (IaC)
- Terraform and HCL
- Terraform workflow
- Providers and resources
- Resource types, names, and attributes
- Output blocks
- Terraform state

## Terraform Commands Practiced

| Command | Purpose |
|---|---|
| `terraform init` | Initializes the working directory |
| `terraform fmt` | Formats Terraform configuration files |
| `terraform validate` | Validates the configuration |
| `terraform plan` | Previews infrastructure changes |
| `terraform apply` | Applies the proposed changes |
| `terraform destroy` | Destroys managed resources |

## Practical Exercise

Created a basic Terraform configuration using the built-in `terraform_data` resource.

```hcl
resource "terraform_data" "first_resource" {
  input = "My first Terraform resource"
}

output "message" {
  value = terraform_data.first_resource.output
}
```

## Key Learning

- Terraform configuration is written in `.tf` files.
- Resources represent infrastructure or objects managed by Terraform.
- Output blocks display selected values.
- Terraform state tracks the resources managed by Terraform.
- The `terraform_data` resource allows practicing Terraform without provisioning billable AWS infrastructure.

## Outcome

Successfully initialized Terraform, created a basic resource, explored outputs and state, and practiced the Terraform workflow.