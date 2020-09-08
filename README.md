# IaC-Homework
## This terraform code creates 1 instance, 1 security group, 1 public subnet, 1 RDS DB-instance; run ansible config on instance installing nginx+php
## After instance initialization it take some time before ansible finishes configuration process (5-7 minutes).
### Requirements
1) Create secret key pair in your aws console with name "aws1HW"
2) Check terraform.tfvars and change vars of region/AZ/vpc as you need
3) Set environment vars - AWS_ACCESS_KEY_ID and AWS_SECRET_ACCESS_KEY
### For now instance can use simple php files, but there is some problems with Wordpress. So if I will be able to fix this issues, I'll add wordpress to my project.
Link to my ansible roles for nginx and php: https://github.com/NaidaDV/for-IaC-HW
