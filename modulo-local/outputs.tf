output "vm_ip" {
  value = aws_instance.vm.public_ip
}

output "ami" {
  value = aws_instance.vm.ami
}