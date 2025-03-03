terraform {
  backend "local" {
    path = "/Users/venkata/Desktop/terraform/03_state/terraform.tfstate"
  }
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.1"
    }
  }
}
