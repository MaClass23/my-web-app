variable "aws_region" {
  default = "us-west-1"
}
variable "vpc_cidr" {
  default = "172.0.0.0/24"
}
variable "subnets_cidr" {
  type    = list(string)
  default = ["172.0.0.0/25", "172.0.0.128/25"]
}
variable "availability_zones" {
  type    = list(string)
  default = ["us-west-1a", "us-west-1b"]
}
variable "ubuntuami" {
  default = "ami-07b068f843ec78e72"  #"ami-0b9064170e32bde34"   
}
variable "redhatami" {
  default = "ami-054965c6cd7c6e462"   #"ami-0ba62214afa52bec7"  #"ami-008a8487adc2b32ec"
}
variable "key_name" {
  default = "devkey"  #"testkey"
}
