terraform {
    backend "local" {
    path = "/Users/Desktop/terraform/05_variables/terraform.tfstate"
  }
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.1"
    }
  }
}

locals {
  environment = "prod" # dev, staging, prod
  upper_case  = upper(local.environment)
  base_path   = "${path.module}/config/${local.upper_case}"
}

resource "local_file" "example_1" {
  content  = "demo content"
  filename = "${path.module}/${var.filename_1}.txt"
}

resource "local_file" "service_config" {
  filename = "${local.base_path}/server1.sh"
  content  = <<EOT
    environment=${local.environment}
    port=3000
    EOT
}

# outputs
output "filename_1" {
  value = local_file.service_config.filename
}
