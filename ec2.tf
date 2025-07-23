resource "aws_instance" "wazuh" {
  ami           = "ami-05699070ae3b9d21e"  # Ubuntu 22.04 LTS in eu-west-2
  instance_type = "t3.medium"
  key_name      = "wazuh-lab"              # replace with your key pair name
  vpc_security_group_ids = [aws_security_group.wazuh_sg.id]

  user_data = <<-EOF
    #!/bin/bash
    apt update -y
    apt install -y curl
    curl -sO https://packages.wazuh.com/4.7/wazuh-install.sh
    bash wazuh-install.sh -a
  EOF

  tags = {
    Name = "wazuh-basic"
  }
}
