resource "aws_s3_bucket" "bucket_terraform" {
  bucket = "henricker-remote-state"
}

resource "aws_s3_bucket_versioning" "bucket_terraform_versioned" {
  bucket = aws_s3_bucket.bucket_terraform.id
  versioning_configuration {
    status = "Enabled"
  }
}