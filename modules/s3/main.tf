resource "aws_s3_bucket" "main" {
    region = var.region
    bucket = var.bucket_name
}