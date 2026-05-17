data "terraform_remote_state" "report_service" {
  backend = "s3"

  config = {
    bucket = "tf-state-ai-architecture-analyzer"
    key    = local.report_service_state_path
    region = "us-east-2"
  }
}
