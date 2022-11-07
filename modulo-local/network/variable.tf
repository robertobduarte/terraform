variable "cidr_vpc" {
  description = "cidr block para VPC"
  type        = string
}

variable "cidr_subnet" {
  description = "cidr block para subnet"
  type        = string
}

variable "environment" {
  description = "Ambiente onde o recurso será utilizado"
  type        = string
}

variable "managed-by" {
  type        = string
  default     = "terraform"
  description = "Tag para identificar que o recurso foi criado pelo terraform"
}