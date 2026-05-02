locals {
  report_lb_hostname = data.terraform_remote_state.report_service.outputs.challengeone_lb_hostname
  report_lb_name = substr(split(".", local.report_lb_hostname)[0], 0, 32)
}

data "aws_lb" "report_lb" {
  name = local.report_lb_name
}

data "aws_lb_listener" "report_lb_listener_80" {
  load_balancer_arn = data.aws_lb.report_lb.arn
  port              = 80
}

data "aws_lb" "upload_lb" {
  name = data.terraform_remote_state.upload_service.outputs.upload_lb_name
}

data "aws_lb_listener" "upload_listener_80" {
  load_balancer_arn = data.aws_lb.upload_lb.arn
  port              = 80
}