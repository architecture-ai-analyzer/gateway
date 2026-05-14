terraform {
  backend "s3" {
    bucket         = "tf-state-ai-architecture-analyzer"
    key            = "v1/gateway/dev/terraform.tfstate"
    region         = "us-east-2"
    encrypt        = true
  }
}