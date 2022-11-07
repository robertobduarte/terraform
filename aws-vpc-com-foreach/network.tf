resource "aws_vpc" "vpc" {
  for_each = {
    "cidr_block-1" = "10.0.0.0/16"
    "cidr_block-2" = "10.0.0.0/24"
  }
  cidr_block = each.value

  tags = {
    Name = "vpc-terraform-com-foreach"
  }
}