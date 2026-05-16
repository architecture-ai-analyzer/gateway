data "terraform_remote_state" "upload_service" {
  backend = "s3"

  config = {
    bucket = "tf-state-ai-architecture-analyzer"
    key    = local.upload_service_state_path
    region = "us-east-2"
  }
}