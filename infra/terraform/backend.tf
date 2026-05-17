terraform {
  backend "s3" {
    bucket         = "tf-state-ai-architecture-analyzer"
    region         = "us-east-2"
    encrypt        = true
  }
}