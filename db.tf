resource "aws_db_subnet_group" "hw_sub_db_group" {
  name       = "hw_subnet_group"
  subnet_ids = [aws_subnet.front_subnet.id, aws_subnet.additional_subnet.id]
  
  tags = {
    Name = "hw_subnet_group"
  }
}

resource "aws_db_instance" "default" {
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "8.0.17"
  instance_class         = "db.t2.micro"
  name                   = "myHWdb"
  username               = "admin"
  password               = "toortoor"
  publicly_accessible    = "false"
  port                   = "3306"
  parameter_group_name   = "default.mysql8.0"
  option_group_name      = "default:mysql-8-0"
  db_subnet_group_name   = "${aws_db_subnet_group.hw_sub_db_group.id}"
  vpc_security_group_ids = [ "${aws_security_group.security_group.id}" ]
  availability_zone      = "${var.aws_AZ1}"
  skip_final_snapshot    = "true"
  tags = {
    Name = "myHWdb"
  }
}
