resource "aws_apigatewayv2_integration" "report_backend" {
  api_id           = aws_apigatewayv2_api.main_api.id
  integration_type = "HTTP_PROXY"

  connection_type = "VPC_LINK"
  connection_id   = aws_apigatewayv2_vpc_link.app.id

  integration_method = "ANY"

  integration_uri = data.aws_lb_listener.report_lb_listener_80.arn

  payload_format_version = "1.0"
}

/*resource "aws_apigatewayv2_integration" "upload_backend" {
  api_id                 = aws_apigatewayv2_api.main_api.id
  integration_type       = "HTTP_PROXY"

  connection_type        = "VPC_LINK"
  connection_id          = aws_apigatewayv2_vpc_link.app.id

  integration_method     = "ANY"
  integration_uri        = data.aws_lb_listener.upload_listener_80.arn

  payload_format_version = "1.0"
}*/