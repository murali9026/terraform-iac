provider "aws" {
  region = "us-west-2"
}

resource "aws_s3_bucket" "opsinstance" {
  bucket = "s3-iac-opsamazonq1"
  #acl    = "aws_s3_bucket_acl"

  tags = {
    Environment = "Dev"
    Team        = "Ops"
  }
}

output "amazonq_recommendations" {
  value = "Check AmazonQ for performance and cost optimization insights."
}
