# output.tf
output "ec2_public_ip" {
  description = "public ip for ec2"
  value       = aws_instance.public.public_ip
}

output "vpc_id" {
  description = "The ID of the VPC"
  value       = aws_vpc.main.id
}

output "private_subnet_ids" {
  description = "The IDs of the private subnets"
  value       = aws_subnet.private.*.id
}

output "rds_endpoint" {
  description = "The endpoint of the RDS instance"
  value       = aws_db_instance.postgres.endpoint
}


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