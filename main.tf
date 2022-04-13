provider "aws" {
  region     = "us-east-1"
}
resource "aws_s3_bucket" "Bucket666" {
  bucket = "mainbuckettech"
}

data "aws_caller_identity" "current" {

}

output "bucket_info" {
value = "${data.aws_caller_identity.current.account_id}-Bucket316"
}

output "aws_caller_info" {
  value = data.aws_caller_identity.current
}
