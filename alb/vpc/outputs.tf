output "vpc_id" {
  value = aws_vpc.main.id
}

output "subnet1" {
  value = element(aws_subnet.public_subnet.*.id, 1 )  # first element on the list
}

output "subnet2" {
  value = element(aws_subnet.public_subnet.*.id, 2 )  # second element on the list
}