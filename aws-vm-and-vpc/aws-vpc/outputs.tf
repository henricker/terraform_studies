output "subnet_id" {
  value = aws_subnet.subnet_vpc.id
}

output "security_group_id" {
  value = aws_security_group.asg_vpc.id
}