resource "aws_s3_bucket" "bucket1" {
	bucket = "kranthi-first-bucket"
}

resource "aws_s3_bucket" "bucket2" {
   bucket = "kranthi-second-bucket" 
}

provider "aws" {
    region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "kranthi-test"
    key            = "neeha/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "neeha-0412-dblocks"
    encrypt        = true
  }
}
