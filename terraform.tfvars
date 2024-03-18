# terraform.tfvars

# AWS region
aws_region = "us-west-2"

# IAM role variables
role_name = "my-role"
assume_role_policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [{
    "Effect": "Allow",
    "Principal": {
      "Service": "ec2.amazonaws.com"
    },
    "Action": "sts:AssumeRole"
  }]
}
EOF

# IAM policy variables
policy_name = "my-policy"
policy_description = "Granular policy for task"
policy_document = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [{
    "Effect": "Allow",
    "Action": "ec2:*",
    "Resource": "*"
  }]
}
EOF

# EC2 instance variables
instance_count = 1
ami_id = "ami-12345678"  # Replace with your desired AMI ID
instance_type = "t2.micro"

# Whether to detach the policy from the role and remove the policy
detach_policy = false
remove_policy = false
