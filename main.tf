variable "region" {
    description = "AWS region to deploy resources"
    type = string
  
}

variable "bucket_name" {
    description = "Name of the S3 bucket to create"
    type = string
}

variable "availability_zone" {
    description = "AWS availability zone for EC2 host"
    type = string
}

variable "instance_type" {
    description = "EC2 instance type"
    type = string
}

variable "ec2_host_name" {
    description = "Name of the EC2 host"
    type = string
}

variable "ami_id" {
    description = "AMI ID for the EC2 instance"
    type = string
}

module "s3" {
    source = "./modules/s3"
    region = var.region
    bucket_name = var.bucket_name
}

module "ec2" {
    source = "./modules/ec2"
    availability_zone = var.availability_zone
    instance_type = var.instance_type
    EC2-host-name = var.ec2_host_name
    ami_id = var.ami_id
}