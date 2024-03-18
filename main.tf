# Defining AWS provider configuration
# provider "aws" {
#   region = var.aws_region
# }

# Creating an IAM role
resource "aws_iam_role" "my_role" {
  name               = var.role_name
  assume_role_policy = var.assume_role_policy
}

# Creating a policy
resource "aws_iam_policy" "my_policy" {
  name        = var.policy_name
  description = var.policy_description
  policy      = var.policy_document
}

# Associating the policy with the role
resource "aws_iam_role_policy_attachment" "policy_attachment" {
  role       = aws_iam_role.my_role.name
  policy_arn = aws_iam_policy.my_policy.arn
}

# Creating AWS resources using the IAM role
# Example resource (EC2 instance) creation using the IAM role
resource "aws_instance" "example_instance" {
  count         = var.instance_count
  ami           = var.ami_id
  instance_type = var.instance_type
  iam_instance_profile = aws_iam_role.my_role.name
 
}

# Disassociating the policy from the role
resource "aws_iam_role_policy_attachment" "detach_policy" {
  role       = aws_iam_role.my_role.name
  policy_arn = aws_iam_policy.my_policy.arn
  count      = var.detach_policy ? 1 : 0
}

# Removing the policy
resource "aws_iam_policy" "remove_policy" {
  name = aws_iam_policy.my_policy.name
  arn  = aws_iam_policy.my_policy.arn
  count = var.remove_policy ? 1 : 0
}
