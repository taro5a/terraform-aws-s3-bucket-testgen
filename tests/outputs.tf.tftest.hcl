

# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.

variables {
  create_bucket = true
  bucket        = "test-bucket"
}

run "s3_bucket_id" {
  assert {
    condition     = output.s3_bucket_id == "test-bucket"
    error_message = "Bucket ID output is incorrect."
  }
}

run "s3_bucket_arn" {
  assert {
    condition     = contains(output.s3_bucket_arn, "test-bucket")
    error_message = "Bucket ARN output is incorrect."
  }
}

run "s3_bucket_bucket_domain_name" {
  assert {
    condition     = contains(output.s3_bucket_bucket_domain_name, "test-bucket")
    error_message = "Bucket domain name output is incorrect."
  }
}

run "s3_bucket_bucket_regional_domain_name" {
  assert {
    condition     = contains(output.s3_bucket_bucket_regional_domain_name, "test-bucket")
    error_message = "Bucket regional domain name output is incorrect."
  }
}

run "s3_bucket_hosted_zone_id" {
  assert {
    condition     = output.s3_bucket_hosted_zone_id != ""
    error_message = "Bucket hosted zone ID output is incorrect."
  }
}

run "s3_bucket_lifecycle_configuration_rules" {
  assert {
    condition     = output.s3_bucket_lifecycle_configuration_rules != ""
    error_message = "Bucket lifecycle configuration rules output is incorrect."
  }
}

run "s3_bucket_policy" {
  assert {
    condition     = output.s3_bucket_policy != ""
    error_message = "Bucket policy output is incorrect."
  }
}

run "s3_bucket_region" {
  assert {
    condition     = output.s3_bucket_region != ""
    error_message = "Bucket region output is incorrect."
  }
}

run "s3_bucket_website_endpoint" {
  assert {
    condition     = output.s3_bucket_website_endpoint != ""
    error_message = "Bucket website endpoint output is incorrect."
  }
}

run "s3_bucket_website_domain" {
  assert {
    condition     = output.s3_bucket_website_domain != ""
    error_message = "Bucket website domain output is incorrect."
  }
}