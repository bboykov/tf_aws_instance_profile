resource "aws_iam_instance_profile" "profile" {
  name = "profile_${var.instance_profile_name}"
  role = "${aws_iam_role.role.name}"

  # The below lines are due to issue https://github.com/hashicorp/terraform/issues/1885
  provisioner "local-exec" {
    command = "sleep 90"
  }
}

resource "aws_iam_role" "role" {
  name               = "role_${var.instance_profile_name}"
  path               = "/"
  assume_role_policy = "${var.iam_role}"
}
