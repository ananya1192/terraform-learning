# Terraform Learning Journey

A hands-on repository documenting my journey of learning **Terraform, Infrastructure as Code (IaC), and cloud infrastructure provisioning using AWS**.

## Goals

- Understand Infrastructure as Code and Terraform fundamentals.
- Learn HCL syntax, providers, resources, variables, and outputs.
- Provision and manage AWS infrastructure using Terraform.
- Understand Terraform state, modules, and remote backends.
- Implement infrastructure automation using GitHub Actions.
- Build practical, resume-worthy cloud infrastructure projects.

## Learning Progress

| Day / Section | Topics | Status |
|---|---|---|
| 01 - Terraform Basics | IaC, HCL, Terraform workflow, resources, outputs, state | Completed |
| 02 - Providers and Variables | AWS provider, version constraints, variables, data types, locals, count, for_each | Completed |
| 03 - AWS Provisioning | EC2, S3, security groups, VPC | Upcoming |
| 04 - Terraform State | State management, remote backends, locking | Upcoming |
| 05 - Modules | Reusable modules, module inputs and outputs | Upcoming |
| 06 - Automation | GitHub Actions and CI/CD | Upcoming |

## Repository Structure

```text
terraform-learning/
│
├── terraform-basics/
│   ├── main.tf
│   └── README.md
│
├── providers-and-variables/
│   ├── main.tf
│   ├── variables.tf
│   ├── .terraform.lock.hcl
│   └── README.md
│
├── .gitignore
└── README.md
```

## Tools and Technologies

- Terraform
- HCL (HashiCorp Configuration Language)
- Amazon Web Services (AWS)
- Git and GitHub
- Visual Studio Code
- PowerShell

## Key Concepts Covered

- Infrastructure as Code (IaC)
- Terraform providers and resources
- Input variables and output values
- Local values
- Resource iteration using `count` and `for_each`
- Terraform state management
- Terraform workflow: init, fmt, validate, plan, apply, and destroy

## Notes

This repository contains hands-on exercises, Terraform configuration files, and notes created throughout my learning journey.

**Cost awareness:** Local exercises using Terraform's built-in `terraform_data` resource are preferred wherever possible. AWS infrastructure will be provisioned only when required, with attention to potential costs.

---

*Learning by building, experimenting, and documenting.*