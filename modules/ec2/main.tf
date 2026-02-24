resource "aws_ec2_host" "main-ec2" {
    availability_zone = var.availability_zone
    instance_type = var.instance_type
    tags = {
      Name = var.EC2-host-name
    }
}  

resource "aws_instance" "main-instance" {
    ami = var.ami_id
    instance_type = var.instance_type
    tags = {
      Name = var.EC2-host-name
    }
}