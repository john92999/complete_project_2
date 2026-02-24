variable "availability_zone" {
    description = "AWS availability zone for EC2 host"
    type = string
}

variable "instance_type" {
    description = "EC2 instance type"
    type = string
}

variable "EC2-host-name" {
    description = "Name of the EC2 host"
    type = string
}

variable "ami_id" {
    description = "AMI ID for the EC2 instance"
    type = string
}