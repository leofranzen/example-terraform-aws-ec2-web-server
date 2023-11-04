resource "aws_instance" "web_hello" {
  ami           = data.aws_ami.ubuntu_2204.id
  instance_type = "t2.micro"

  subnet_id              = var.subnet_id
  vpc_security_group_ids = [resource.aws_security_group.web_hello.id]

  user_data = <<-EOF
    #!/bin/bash
    
    exec &>> /var/log/user-data.log
    sleep 30s
    apt -qqq update
    apt -qqq -y install nginx
    systemctl enable --now nginx.service
  EOF

  key_name = resource.aws_key_pair.web_hello.id

  tags = {
    Name = "${var.environment}-${var.project_name}"
  }
}
