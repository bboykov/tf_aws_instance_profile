variable "instance_profile_name" {
  description = "Instance profile name to be used to create profile, policy and role"
}

variable "iam_role" {
  default = <<EOF

{
    "Version": "2012-10-17",
    "Statement": [
        {
            "Action": "sts:AssumeRole",
            "Principal": {
               "Service": "ec2.amazonaws.com"
            },
            "Effect": "Allow",
            "Sid": ""
        }
    ]
}
EOF
}
