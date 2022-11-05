resource "aws_s3_bucket" "bucket_with_all_outputs_by_terraform" {
  bucket        = "bucket-outputs-terraform-roberto-duarte"
  force_destroy = true
  tags = {
    "owner"   = var.owner
    manaeg-by = var.managed-by
  }
  versioning {
    enabled = false
  }
}