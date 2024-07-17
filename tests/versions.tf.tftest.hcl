

# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.
provider "aws" {
  region = "us-west-2"
}

run "required_version" {
  assert {
    condition     = terraform.required_version == ">= 1.0"
    error_message = "Required version is incorrect."
  }
}

run "required_providers" {
  assert {
    condition     = terraform.required_providers.aws.source == "hashicorp/aws"
    error_message = "AWS provider source is incorrect."
  }

  assert {
    condition     = terraform.required_providers.aws.version == ">= 5.27"
    error_message = "AWS provider version is incorrect."
  }
}
