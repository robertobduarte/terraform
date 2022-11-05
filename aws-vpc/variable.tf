variable "region" {
  type        = string
  default     = "us-east-1"
  description = "Região da AWS escolhida"
}

variable "owner" {
  type        = string
  default     = "Roberto Duarte"
  description = "Tag owner"
}

variable "managed-by" {
  type        = string
  default     = "terraform"
  description = "Tag para identificar que o recurso foi criado pelo terraform"
}

variable "bucket-backend" {
  type        = string
  default     = "bucket-outputs-terraform-roberto-duarte"
  description = "bucket default for outputs by terraform"

}