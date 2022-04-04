terraform {
  required_version = "= 1.1.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "= 4.6.0"
    }
  }

  backend "s3" {
    bucket  = "oidc-github-actions-deploy-107662415716"
    encrypt = true
    key     = "terraform.tfstate"
    region  = "ap-northeast-1"
  }
}
