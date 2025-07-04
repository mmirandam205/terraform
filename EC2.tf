provider "aws" {
  region = "us-east-2"  # Cambia si usás otra región
}

resource "aws_instance" "mario_ec2" {
  ami           = "ami-0c803b171269e2d72" # Amazon Linux 2023 en us-east-2
  instance_type = "t3.micro"
  key_name      = "mariolab"  # Asegurate de tener este key par en AWS

  subnet_id = "subnet-07264b405ef600089"  # Usa tu Subnet existente
  vpc_security_group_ids = ["sg-00a0602acd5314d99"]  # Usa tu SG existente

  tags = {
    Name = "MarioEC2Terraform"
  }
}