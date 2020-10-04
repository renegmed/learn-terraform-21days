variable "vpc_cidr" {}   # receiving parameter

variable "public_cidrs" {
  type = list
}
 
variable "private_cidrs" {
  type = list
}