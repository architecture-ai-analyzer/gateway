locals {
  lambda_state_path = "v4/lambda/${var.environment}/terraform.tfstate"
}

locals {
  app_state_path = "app/${var.environment}/terraform.tfstate"
}

locals {
  kubernetes_state_path = "v4/kubernetes/${var.environment}/terraform.tfstate"
}

locals {
  upload_service_state_path = "v1/service-upload/${var.environment}/terraform.tfstate"
}

locals {
  networking_state_path = "v4/networking/${var.environment}/terraform.tfstate"
}

locals {
  report_service_state_path = "v1/report/${var.environment}/terraform.tfstate"
}

