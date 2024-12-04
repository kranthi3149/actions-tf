resource "aws_s3_bucket" "bucket5" {
	bucket = "Kranthi-0"
}

resource "aws_s3_bucket" "bucket6" {
        bucket = "Kranthi-1"
}

provider "aws" {
    region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket         = "neeha-s3bucket-0412"
    key            = "neeha/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "neeha-0412-dblocks"
    encrypt        = true
  }
}
