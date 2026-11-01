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

output "deployment-info" {
  value = "Deploying ${var.instance_count} instances in ${var.region} for ${var.environment}"
}

locals {
  project_name  = "terraform-learning"
  resource_name = "${local.project_name}-${var.environment}"
}

output "resource-name" {
  value = local.resource_name
}

resource "terraform_data" "servers" {
  count = length(var.server_names)
  input = var.server_names[count.index]
}

output "server_names" {
  value = terraform_data.servers[*].output
}