# Define a versão mínima do Terraform e provedores
terraform {
  required_version = ">= 1.0.0"

  required_providers {
    digitalocean = {
      source  = "digitalocean/digitalocean"
      version = "~> 2.0"
    }
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "~> 2.0"
    }
    helm = {
      source  = "hashicorp/helm"
      version = "~> 2.0"
    }
  }

  # Configuração do backend
  # Para DigitalOcean, você pode usar um backend local (menos recomendado para equipes)
  # ou Terraform Cloud para gerenciamento de estado remoto e bloqueio.
  # Para este exemplo, usaremos o local. Para produção, considere Terraform Cloud.
  backend "local" {
    path = "terraform.tfstate"
  }
  # Se fosse usar Terraform Cloud (recomendado para equipes):
  # backend "remote" {
  #   hostname     = "app.terraform.io"
  #   organization = "your-tfc-organization"
  #   workspaces {
  #     name = "your-workspace-name"
  #   }
  # }
}

# Configura o provedor DigitalOcean
provider "digitalocean" {
  token = var.digitalocean_token
}