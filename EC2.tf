variable "INSTANCE_NAME" {
  description = "Nombre de la instancia EC2"
  type        = string
}

resource "aws_instance" "mario_ec2" {
  ami           = "ami-0c803b171269e2d72"
  instance_type = "t3.micro"
  key_name      = "mariolab"

  subnet_id              = "subnet-07264b405ef600089"
  vpc_security_group_ids = ["sg-00a0602acd5314d99"]

  tags = {
    Name = var.INSTANCE_NAME
  }
}
