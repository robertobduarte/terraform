output "subnetid" {
  value = [ for subnet in aws_subnet.subnet : subnet.id ]
}