resource "aws_apigatewayv2_api" "main_api" {
  name          = "main-http-api-${var.environment}"
  protocol_type = "HTTP"

  cors_configuration {
    allow_origins    = ["*"]
    allow_methods    = ["GET","POST","PUT","PATCH","DELETE","OPTIONS"]
    allow_headers    = ["*"]
    expose_headers   = ["*"]
    allow_credentials = false
  }
}