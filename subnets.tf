#############################################
resource "aws_subnet" "front_subnet" {
  vpc_id     = var.def_vpc_id
  cidr_block = "172.31.1.0/24"
  availability_zone = var.aws_AZ1
  map_public_ip_on_launch = true
  tags = {
    Name = "front_subnet"
  }
}
#############################################
resource "aws_subnet" "additional_subnet" {
  vpc_id     = var.def_vpc_id 
  cidr_block = "172.31.2.0/24"
  availability_zone = var.aws_AZ2
  map_public_ip_on_launch = true
  tags = {
    Name = "additional_subnet"
  }
}
#############################################

