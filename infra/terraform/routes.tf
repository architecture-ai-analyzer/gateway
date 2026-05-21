resource "aws_apigatewayv2_route" "report_generate" {
  api_id    = aws_apigatewayv2_api.main_api.id
  route_key = "POST /api/reports/{uploadId}"
  target    = "integrations/${aws_apigatewayv2_integration.report_backend.id}"
}

resource "aws_apigatewayv2_route" "report_list" {
  api_id    = aws_apigatewayv2_api.main_api.id
  route_key = "GET /api/reports"
  target    = "integrations/${aws_apigatewayv2_integration.report_backend.id}"
}

resource "aws_apigatewayv2_route" "report_get_by_id" {
  api_id    = aws_apigatewayv2_api.main_api.id
  route_key = "GET /api/reports/{uploadId}"
  target    = "integrations/${aws_apigatewayv2_integration.report_backend.id}"
}

resource "aws_apigatewayv2_route" "report_get_status_by_id" {
  api_id    = aws_apigatewayv2_api.main_api.id
  route_key = "GET /api/reports/{uploadId}/status"
  target    = "integrations/${aws_apigatewayv2_integration.report_backend.id}"
}

resource "aws_apigatewayv2_route" "report_download" {
  api_id    = aws_apigatewayv2_api.main_api.id
  route_key = "GET /api/reports/{uploadId}/download"
  target    = "integrations/${aws_apigatewayv2_integration.upload_backend.id}"
}

resource "aws_apigatewayv2_route" "upload_list" {
  api_id    = aws_apigatewayv2_api.main_api.id
  route_key = "GET /v1/uploads"
  target    = "integrations/${aws_apigatewayv2_integration.upload_backend.id}"
}

resource "aws_apigatewayv2_route" "upload_file" {
  api_id    = aws_apigatewayv2_api.main_api.id
  route_key = "POST /v1/uploads"
  target    = "integrations/${aws_apigatewayv2_integration.upload_backend.id}"
}

resource "aws_apigatewayv2_route" "upload_get_by_id" {
  api_id    = aws_apigatewayv2_api.main_api.id
  route_key = "GET /v1/uploads/{uploadId}"
  target    = "integrations/${aws_apigatewayv2_integration.upload_backend.id}"
}

resource "aws_apigatewayv2_route" "create_project" {
  api_id    = aws_apigatewayv2_api.main_api.id
  route_key = "POST /v1/projects"
  target    = "integrations/${aws_apigatewayv2_integration.upload_backend.id}"
}

resource "aws_apigatewayv2_route" "list_project" {
  api_id    = aws_apigatewayv2_api.main_api.id
  route_key = "GET /v1/projects"
  target    = "integrations/${aws_apigatewayv2_integration.upload_backend.id}"
}

resource "aws_apigatewayv2_route" "project_get_by_id" {
  api_id    = aws_apigatewayv2_api.main_api.id
  route_key = "GET /v1/projects/{projectId}"
  target    = "integrations/${aws_apigatewayv2_integration.upload_backend.id}"
}
