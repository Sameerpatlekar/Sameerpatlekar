provider "aws" {
  region = "us-west-2" # or your preferred region
}

resource "aws_iam_user" "admin_user" {
  name = "admin"
}

resource "aws_iam_user_policy_attachment" "admin_policy" {
  user       = aws_iam_user.admin_user.name
  policy_arn = "arn:aws:iam::aws:policy/AdministratorAccess"
}

# Optionally, create access keys for the user
resource "aws_iam_access_key" "admin_access_key" {
  user = aws_iam_user.admin_user.name
}

output "admin_access_key_id" {
  value = aws_iam_access_key.admin_access_key.id
}

output "admin_secret_access_key" {
  value     = aws_iam_access_key.admin_access_key.secret
}
