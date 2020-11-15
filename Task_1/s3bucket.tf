resource "aws_s3_bucket" "Task-1-S3-Bucket-Ahmed-DevOps" {
  bucket = "my-tf-test-bucket-task1"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }

  versioning {
    enabled = true
  }
}