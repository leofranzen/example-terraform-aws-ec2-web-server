resource "aws_key_pair" "web_hello" {
  key_name   = "${var.environment}-${var.project_name}"
  public_key = var.public_key
}
