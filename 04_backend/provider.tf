terraform {
  backend "local" {
    path = "/Users/venkataramanareddy/Documents/GitHub/terraform-examples/04_backend/terraform.tfstate"
  }
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.1"
    }
  }
}
