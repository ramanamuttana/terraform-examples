terraform {
       required_version = ">= 1.0.0"
       required_providers {
              azurerm = {
                     source = "hashicorp/azurerm"
                     version = "~> 3.0.0"
              }
              local = {
                 source = "hashicorp/local"
                 version = "2.5.2"
              }
       }
}
