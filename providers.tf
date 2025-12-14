terraform {
  cloud {

    organization = "homelab-01"
    hostname     = "app.terraform.io"
    workspaces {
      name = "infra"
    }
  }
  required_providers {
    kubernetes = {
      source  = "registry.terraform.io/hashicorp/kubernetes"
      version = "~> 3.0.0"
    }
    opnsense = {
      version = "~> 0.16.0"
      source  = "browningluke/opnsense"
    }

  }
}

provider "opnsense" {
  uri        = "https://10.0.10.1"
  api_key    = ""
  api_secret = ""
}

