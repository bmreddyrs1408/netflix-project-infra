provider "aws" {
region="us-east-1"
}
resource "aws_instance" "one" {
count = 4
ami ="ami-06b21ccaeff8cd686"
key_name="aws-myvtech"
vpc_security_group_ids = ["sg-0c7ff5813c220ff6c"]
tags = {
Name = var.instance_names[count.index]
}
}
variable "instance_names" {
default=["jenkins","nexus","tomcat-1","tomcat-2"]
}
