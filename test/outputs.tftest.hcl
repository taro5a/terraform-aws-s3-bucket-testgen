
# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.

run "website_endpoint_validation" {
  assert {
    condition     = output.website_endpoint == "http://${aws_s3_bucket_website_configuration.s3_bucket.website_endpoint}/index.html"
    error_message = "Website endpoint does not match the expected value."
  }
}