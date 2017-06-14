# tf_aws_instance_profile

Terraform module to create iam instance profile.

## Usage

```
module "profile" {
  source                = "github.com/bboykov/tf_aws_instance_profile"
  instance_profile_name = "${var.instance_profile_name}"
}


resource "aws_instance" "main" {
...
  iam_instance_profile   = "${module.profile.iam_id}"
...
}
```
