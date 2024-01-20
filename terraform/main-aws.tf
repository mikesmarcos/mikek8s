terraform {
  required_version = ">= 1.7.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 5.30"
    }
  }
}

provider "aws" {
  region = var.region
  # Usa credenciais diretamente da configuração do aws-cli do meu usuário
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = var.profile
}
