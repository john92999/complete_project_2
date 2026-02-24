terraform {
  backend "s3" {
    bucket = "main-bucket-for-complete-project-2"
    key    = "terraform.tfstate"
    region = "ap-south-1"
    }   
}

