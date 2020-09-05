
#############################################
resource "aws_instance" "front1" {
  ami = var.ami
  instance_type = "t2.micro"
  subnet_id = "${aws_subnet.front_subnet.id}"
  key_name = var.auth
  security_groups = [ "${aws_security_group.security_group.id}" ]
  #iam_instance_profile = "TestRoleForInstance"
  user_data = file("script.sh")
  tags = {
    Name = "Front1"
  }
}
############################################


