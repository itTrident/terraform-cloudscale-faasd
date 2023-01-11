terraform {
  required_providers {
    cloudscale = {
      source  = "cloudscale-ch/cloudscale"
      version = "~> 4.1.0"
    }
  }
}

provider "cloudscale" {
  token = var.token
}