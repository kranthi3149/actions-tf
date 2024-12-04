resource "aws_s3_bucket" "bucket1" {
	bucket = "kranthi-first-bucket"
}

resource "aws_s3_bucket" "bucket2" {
   bucket = "kranthi-second-bucket" 
}

provider "aws" {
    region = "us-east-1"
}

