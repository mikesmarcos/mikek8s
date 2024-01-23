terraform {
  required_version = ">= 1.7.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 5.30"
    }
    oci = {
      source  = "oracle/oci"
      version = "5.23.0"
    }
  }
}

provider "aws" {
  region = var.aws_region
  # Usa credenciais diretamente da configuração do aws-cli do meu usuário
  shared_credentials_files = ["~/.aws/credentials"]
  profile                  = var.aws_profile
}

# Configure the OCI provider with an API Key
# tenancy_ocid is the compartment OCID for the root compartment
provider "oci" {
  tenancy_ocid     = var.tenancy_ocid
  user_ocid        = var.user_ocid
  fingerprint      = var.fingerprint
  private_key_path = var.private_key_path
  region           = var.oci_region
}

