# Output the ARN of the created IAM role
output "role_arn" {
  value = aws_iam_role.my_role.arn
}

# Output the ID of the attached policy
output "policy_id" {
  value = aws_iam_policy.my_policy.id
}
