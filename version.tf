terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.20.0"
    }

    random = {
      source  = "hashicorp/random"
      version = "3.1.0"
    }

    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }

    null = {
      source  = "hashicorp/null"
      version = "3.1.0"
    }

    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = ">= 2.0.1"
    }
  }
backend s3 {

  bucket = "up-state-bucket"

  key = "terraform/terraform_cluster_lock.tfstate"

  region = "us-east-2"



  dynamodb_table = "up_cluster_lock"

  encrypt = true

}
  required_version = ">= 0.14"
}
