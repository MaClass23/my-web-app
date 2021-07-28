# Security Group All Traffic Attached To Instnaces In instances.tf
resource "aws_security_group" "demo_sg" {
  name        = "Allow_All_Ports"
  description = "Allow All Ports and All Protocols"
  vpc_id      = aws_vpc.vpc.id
  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1" # All protocols are open
    cidr_blocks = ["0.0.0.0/0"] # This is a list ie could contain a list of cidr blocks
  }
  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
