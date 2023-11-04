resource "aws_eip" "web_hello" {
  domain   = "vpc"
  instance = resource.aws_instance.web_hello.id

  tags = {
    Name = "ec2-${var.environment}-${var.project_name}"
  }
}
