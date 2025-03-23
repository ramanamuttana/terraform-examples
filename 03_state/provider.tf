terraform {
  backend "local" {
    path = "/Users/venkataramanareddy/Documents/GitHub/terraform-examples/03_state/terraform.tfstate"
  }
  required_providers {
    local = {
      source = "hashicorp/local"
      version = "2.5.1"
    }
  }
}
