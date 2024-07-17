
# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.

variables {
  bucket_name = "test-bucket"
}

run "s3_bucket_validation" {
  assert {
    condition     = aws_s3_bucket.s3_bucket.bucket == var.bucket_name
    error_message = "Bucket name does not match the provided variable."
  }
}

run "s3_bucket_website_configuration_validation" {
  assert {
    condition     = aws_s3_bucket_website_configuration.s3_bucket.bucket == aws_s3_bucket.s3_bucket.id
    error_message = "Bucket ID does not match the ID of the created bucket."
  }
}

run "s3_bucket_public_access_block_validation" {
  assert {
    condition     = aws_s3_bucket_public_access_block.s3_bucket.bucket == aws_s3_bucket.s3_bucket.id
    error_message = "Bucket ID does not match the ID of the created bucket."
  }
}

run "s3_bucket_ownership_controls_validation" {
  assert {
    condition     = aws_s3_bucket_ownership_controls.s3_bucket.bucket == aws_s3_bucket.s3_bucket.id
    error_message = "Bucket ID does not match the ID of the created bucket."
  }
}

run "s3_bucket_acl_validation" {
  assert {
    condition     = aws_s3_bucket_acl.s3_bucket.bucket == aws_s3_bucket.s3_bucket.id
    error_message = "Bucket ID does not match the ID of the created bucket."
  }
}

run "s3_bucket_policy_validation" {
  assert {
    condition     = aws_s3_bucket_policy.s3_bucket.bucket == aws_s3_bucket.s3_bucket.id
    error_message = "Bucket ID does not match the ID of the created bucket."
  }
}

run "s3_object_index_validation" {
  assert {
    condition     = aws_s3_object.index.bucket == aws_s3_bucket.s3_bucket.id
    error_message = "Bucket ID does not match the ID of the created bucket."
  }
}

run "s3_object_error_validation" {
  assert {
    condition     = aws_s3_object.error.bucket == aws_s3_bucket.s3_bucket.id
    error_message = "Bucket ID does not match the ID of the created bucket."
  }
}