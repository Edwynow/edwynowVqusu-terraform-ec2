resource "aws_instance" "edwynow_ec2" {
  ami           = "ami-06cdac14c9c4da91b"
  instance_type = "t3.micro"
  key_name      = "edwynowltd"
    vpc_security_group_ids = [aws_security_group.edwynow_ec2_sg.id]
    user_data = file("userdata.sh")

  tags = {
    Name        = "edwynowVqusu-app"
    Environment = "Dev"
  }
}