#key pair login
resource "aws_key_pair" "my_key" {
  key_name   = "terra-key-ec2"
  public_key = file("terra-key-ec2.pub")
}

#create vpc and security group
resource "aws_default_vpc" "default" {

}

// create security group
resource "aws_security_group" "my_security_group" {
  name        = "automate-sg"
  description = "this will add a TF in securoty gorup"
  vpc_id      = aws_default_vpc.default.id #interpolation

  #inbound rules 
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    description = "SSH Open"
  }
  ingress {
    description = "HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Allow port 8000"
    from_port   = 8000
    to_port     = 8000
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }



  #outboud rules 

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
    description = "Allow all outbound traffic"
  }



  tags = {
    Name = "allow_tls"
  }


}

# Create EC2 instance
resource "aws_instance" "my_ec2_new_instance" {

  ami                    = "ami-0ecb62995f68bb549"
  instance_type          = "t2.micro"
  key_name               = aws_key_pair.my_key.key_name
  vpc_security_group_ids = [aws_security_group.my_security_group.id]
  user_data              = file("install_nginx.sh")

  tags = {
    Name = "tws-automate"
  }

  root_block_device {
    volume_size = 8
    volume_type = "gp3"
  }
}

