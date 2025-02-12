data "aws_ami" "amazon_linux" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-*-hvm-*-x86_64-gp2"] # More general pattern
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}

data "aws_region" "current" {}

output "ami_id" {
  value       = data.aws_ami.amazon_linux.id
  description = "The ID of the most recent Amazon Linux 2 AMI"
}

output "ami_name" {
  value       = data.aws_ami.amazon_linux.name
  description = "The name of the most recent Amazon Linux 2 AMI"
}

output "region_name" {
  value       = data.aws_region.current.name
  description = "The name of the current AWS region"
}

output "region_description" {
  value = data.aws_region.current.description
  description = "Description of current region"
}