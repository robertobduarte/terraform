output "aws_s3_bucket" {
  value = aws_s3_bucket.bucket_with_all_outputs_by_terraform.bucket
}

output "aws_s3_bucket_id" {
  value = aws_s3_bucket.bucket_with_all_outputs_by_terraform.id
}