
# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.

run "bucket_name_validation" {
  assert {
    condition     = var.bucket_name == "test-bucket"
    error_message = "Bucket name does not match the provided variable."
  }
}

Please note that these tests are generated and should be reviewed by the module author to ensure they are testing the correct conditions.