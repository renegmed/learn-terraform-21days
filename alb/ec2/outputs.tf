

output "instance1_id" {
  value = element(aws_instance.my-test-instance.*.id, 1)  # picking the intance 1 id
}

output "instance2_id" {
  value = element(aws_instance.my-test-instance.*.id, 2) # picking the 2nd instance id
}
