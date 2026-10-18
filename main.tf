resource "aws_instance" "edwynow_ec2" {
  ami           = "ami-06cdac14c9c4da91b"
  instance_type = "t3.micro"

  tags = {
    Name        = "edwynowVqusu-app"
    Environment = "Dev"
  }
}