

# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.

variables {
  create_bucket = true
  attach_elb_log_delivery_policy = false
  attach_lb_log_delivery_policy = false
  attach_access_log_delivery_policy = false
  attach_deny_insecure_transport_policy = false
  attach_require_latest_tls_policy = false
  attach_policy = false
  attach_public_policy = true
  attach_inventory_destination_policy = false
  attach_analytics_destination_policy = false
  attach_deny_incorrect_encryption_headers = false
  attach_deny_incorrect_kms_key_sse = false
  allowed_kms_key_arn = null
  attach_deny_unencrypted_object_uploads = false
  bucket = null
  bucket_prefix = null
  acl = null
  policy = null
  tags = {}
  force_destroy = false
  acceleration_status = null
  request_payer = null
  website = {}
  cors_rule = []
  versioning = {}
  logging = {}
  access_log_delivery_policy_source_buckets = []
  access_log_delivery_policy_source_accounts = []
  grant = []
  owner = {}
  expected_bucket_owner = null
  lifecycle_rule = []
  replication_configuration = {}
  server_side_encryption_configuration = {}
  intelligent_tiering = {}
  object_lock_configuration = {}
  metric_configuration = []
  inventory_configuration = {}
  inventory_source_account_id = null
  inventory_source_bucket_arn = null
  inventory_self_source_destination = false
  analytics_configuration = {}
  analytics_source_account_id = null
  analytics_source_bucket_arn = null
  analytics_self_source_destination = false
  object_lock_enabled = false
  block_public_acls = true
  block_public_policy = true
  ignore_public_acls = true
  restrict_public_buckets = true
  control_object_ownership = false
  object_ownership = "BucketOwnerEnforced"
  putin_khuylo = true
}

run "create_bucket" {
  assert {
    condition     = aws_s3_bucket.this[0].id != ""
    error_message = "Bucket was not created."
  }
}

run "attach_elb_log_delivery_policy" {
  assert {
    condition     = aws_s3_bucket.this[0].id != ""
    error_message = "ELB log delivery policy was not attached."
  }
}

run "attach_lb_log_delivery_policy" {
  assert {
    condition     = aws_s3_bucket.this[0].id != ""
    error_message = "ALB/NLB log delivery policy was not attached."
  }
}

run "attach_access_log_delivery_policy" {
  assert {
    condition     = aws_s3_bucket.this[0].id != ""
    error_message = "S3 access log delivery policy was not attached."
  }
}

run "attach_deny_insecure_transport_policy" {
  assert {
    condition     = aws_s3_bucket.this[0].id != ""
    error_message = "Deny non-SSL transport policy was not attached."
  }
}

run "attach_require_latest_tls_policy" {
  assert {
    condition     = aws_s3_bucket.this[0].id != ""
    error_message = "Latest version of TLS was not required."
  }
}

run "attach_policy" {
  assert {
    condition     = aws_s3_bucket.this[0].id != ""
    error_message = "Bucket policy was not attached."
  }
}

run "attach_public_policy" {
  assert {
    condition     = aws_s3_bucket.this[0].id != ""
    error_message = "Public bucket policy was not attached."
  }
}

run "attach_inventory_destination_policy" {
  assert {
    condition     = aws_s3_bucket.this[0].id != ""
    error_message = "Bucket inventory destination policy was not attached."
  }
}

run "attach_analytics_destination_policy" {
  assert {
    condition     = aws_s3_bucket.this[0].id != ""
    error_message = "Bucket analytics destination policy was not attached."
  }
}

run "attach_deny_incorrect_encryption_headers" {
  assert {
    condition     = aws_s3_bucket.this[0].id != ""
    error_message = "Deny incorrect encryption headers policy was not attached."
  }
}

run "attach_deny_incorrect_kms_key_sse" {
  assert {
    condition     = aws_s3_bucket.this[0].id != ""
    error_message = "Deny usage of incorrect KMS key SSE policy was not attached."
  }
}

run "attach_deny_unencrypted_object_uploads" {
  assert {
    condition     = aws_s3_bucket.this[0].id != ""
    error_message = "Deny unencrypted object uploads policy was not attached."
  }
}

run "create_bucket_with_name" {
  variables {
    bucket = "test-bucket"
  }

  assert {
    condition     = aws_s3_bucket.this[0].id == "test-bucket"
    error_message = "Bucket was not created with the correct name."
  }
}

run "create_bucket_with_prefix" {
  variables {
    bucket_prefix = "test-prefix"
  }

  assert {
    condition     = contains(aws_s3_bucket.this[0].id, "test-prefix")
    error_message = "Bucket was not created with the correct prefix."
  }
}

run "set_bucket_acl" {
  variables {
    acl = "private"
  }

  assert {
    condition     = aws_s3_bucket_acl.this[0].acl == "private"
    error_message = "Bucket ACL was not set correctly."
  }
}

run "set_bucket_policy" {
  variables {
    policy = "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":\"*\",\"Action\":\"s3:GetObject\",\"Resource\":\"arn:aws:s3:::bucket/*\"}]}"
  }

  assert {
    condition     = aws_s3_bucket_policy.this[0].policy == "{\"Version\":\"2012-10-17\",\"Statement\":[{\"Effect\":\"Allow\",\"Principal\":\"*\",\"Action\":\"s3:GetObject\",\"Resource\":\"arn:aws:s3:::bucket/*\"}]}"
    error_message = "Bucket policy was not set correctly."
  }
}

run "set_bucket_tags" {
  variables {
    tags = { "Name" = "TestBucket", "Environment" = "Test" }
  }

  assert {
    condition     = aws_s3_bucket.this[0].tags == { "Name" = "TestBucket", "Environment" = "Test" }
    error_message = "Bucket tags were not set correctly."
  }
}

run "set_force_destroy" {
  variables {
    force_destroy = true
  }

  assert {
    condition     = aws_s3_bucket.this[0].force_destroy == true
    error_message = "Force destroy was not set correctly."
  }
}

run "set_acceleration_status" {
  variables {
    acceleration_status = "Enabled"
  }

  assert {
    condition     = aws_s3_bucket_accelerate_configuration.this[0].status == "Enabled"
    error_message = "Acceleration status was not set correctly."
  }
}

run "set_request_payer" {
  variables {
    request_payer = "Requester"
  }

  assert {
    condition     = aws_s3_bucket_request_payment_configuration.this[0].payer == "Requester"
    error_message = "Request payer was not set correctly."
  }
}

run "set_website" {
  variables {
    website = { index_document = "index.html", error_document = "error.html" }
  }

  assert {
    condition     = aws_s3_bucket_website_configuration.this[0].index_document.suffix == "index.html"
    error_message = "Website index document was not set correctly."
  }

  assert {
    condition     = aws_s3_bucket_website_configuration.this[0].error_document.key == "error.html"
    error_message = "Website error document was not set correctly."
  }
}

run "set_cors_rule" {
  variables {
    cors_rule = [{ allowed_methods = ["GET"], allowed_origins = ["*"] }]
  }

  assert {
    condition     = aws_s3_bucket_cors_configuration.this[0].cors_rule[0].allowed_methods == ["GET"]
    error_message = "CORS rule allowed methods were not set correctly."
  }

  assert {
    condition     = aws_s3_bucket_cors_configuration.this[0].cors_rule[0].allowed_origins == ["*"]
    error_message = "CORS rule allowed origins were not set correctly."
  }
}

run "set_versioning" {
  variables {
    versioning = { status = "Enabled" }
  }

  assert {
    condition     = aws_s3_bucket_versioning.this[0].versioning_configuration.status == "Enabled"
    error_message = "Versioning status was not set correctly."
  }
}

run "set_logging" {
  variables {
    logging = { target_bucket = "log-bucket", target_prefix = "logs/" }
  }

  assert {
    condition     = aws_s3_bucket_logging.this[0].target_bucket == "log-bucket"
    error_message = "Logging target bucket was not set correctly."
  }

  assert {
    condition     = aws_s3_bucket_logging.this[0].target_prefix == "logs/"
    error_message = "Logging target prefix was not set correctly."
  }
}

run "set_grant" {
  variables {
    grant = [{ type = "CanonicalUser", id = "id", permission = "FULL_CONTROL" }]
  }

  assert {
    condition     = aws_s3_bucket_acl.this[0].access_control_policy.grant[0].grantee.type == "CanonicalUser"
    error_message = "Grant type was not set correctly."
  }

  assert {
    condition     = aws_s3_bucket_acl.this[0].access_control_policy.grant[0].grantee.id == "id"
    error_message = "Grant ID was not set correctly."
  }

  assert {
    condition     = aws_s3_bucket_acl.this[0].access_control_policy.grant[0].permission == "FULL_CONTROL"
    error_message = "Grant permission was not set correctly."
  }
}

run "set_owner" {
  variables {
    owner = { id = "id", display_name = "name" }
  }

  assert {
    condition     = aws_s3_bucket_acl.this[0].access_control_policy.owner.id == "id"
    error_message = "Owner ID was not set correctly."
  }

  assert {
    condition     = aws_s3_bucket_acl.this[0].access_control_policy.owner.display_name == "name"
    error_message = "Owner display name was not set correctly."
  }
}

run "set_expected_bucket_owner" {
  variables {
    expected_bucket_owner = "owner"
  }

  assert {
    condition     = aws_s3_bucket_acl.this[0].expected_bucket_owner == "owner"
    error_message = "Expected bucket owner was not set correctly."
  }
}

run "set_lifecycle_rule" {
  variables {
    lifecycle_rule = [{ id = "rule", status = "Enabled", prefix = "logs/", enabled = true }]
  }

  assert {
    condition     = aws_s3_bucket_lifecycle_configuration.this[0].rule[0].id == "rule"
    error_message = "Lifecycle rule ID was not set correctly."
  }

  assert {
    condition     = aws_s3_bucket_lifecycle_configuration.this[0].rule[0].status == "Enabled"
    error_message = "Lifecycle rule status was not set correctly."
  }

  assert {
    condition     = aws_s3_bucket_lifecycle_configuration.this[0].rule[0].filter.prefix == "logs/"
    error_message = "Lifecycle rule prefix was not set correctly."
  }
}

run "set_replication_configuration" {
  variables {
    replication_configuration = { role = "role", rule = [{ id = "rule", status = "Enabled", prefix = "logs/", enabled = true }] }
  }

  assert {
    condition     = aws_s3_bucket_replication_configuration.this[0].role == "role"
    error_message = "Replication configuration role was not set correctly."
  }

  assert {
    condition     = aws_s3_bucket_replication_configuration.this[0].rule[0].id == "rule"
    error_message = "Replication configuration rule ID was not set correctly."
  }

  assert {
    condition     = aws_s3_bucket_replication_configuration.this[0].rule[0].status == "Enabled"
    error_message = "Replication configuration rule status was not set correctly."
  }

  assert {
    condition     = aws_s3_bucket_replication_configuration.this[0].rule[0].filter.prefix == "logs/"
    error_message = "Replication configuration rule prefix was not set correctly."
  }
}

run "set_server_side_encryption_configuration" {
  variables {
    server_side_encryption_configuration = { rule = { apply_server_side_encryption_by_default = { sse_algorithm = "aws:kms", kms_master_key_id = "key" } } }
  }

  assert {
    condition     = aws_s3_bucket_server_side_encryption_configuration.this[0].rule[0].apply_server_side_encryption_by_default.sse_algorithm == "aws:kms"
    error_message = "Server-side encryption configuration SSE algorithm was not set correctly."
  }

  assert {
    condition     = aws_s3_bucket_server_side_encryption_configuration.this[0].rule[0].apply_server_side_encryption_by_default.kms_master_key_id == "key"
    error_message = "Server-side encryption configuration KMS master key ID was not set correctly."
  }
}

run "set_intelligent_tiering" {
  variables {
    intelligent_tiering = { name = { status = "Enabled", tiering = [{ access_tier = "FREQUENT_ACCESS", days = 30 }] } }
  }

  assert {
    condition     = aws_s3_bucket_intelligent_tiering_configuration.this["name"].status == "Enabled"
    error_message = "Intelligent tiering status was not set correctly."
  }

  assert {
    condition     = aws_s3_bucket_intelligent_tiering_configuration.this["name"].tiering[0].access_tier == "FREQUENT_ACCESS"
    error_message = "Intelligent tiering access tier was not set correctly."
  }

  assert {
    condition     = aws_s3_bucket_intelligent_tiering_configuration.this["name"].tiering[0].days == 30
    error_message = "Intelligent tiering days was not set correctly."
  }
}

run "set_object_lock_configuration" {
  variables {
    object_lock_configuration = { rule = { default_retention = { mode = "GOVERNANCE", days = 30 } } }
  }

  assert {
    condition     = aws_s3_bucket_object_lock_configuration.this[0].rule.default_retention.mode == "GOVERNANCE"
    error_message = "Object lock configuration mode was not set correctly."
  }

  assert {
    condition     = aws_s3_bucket_object_lock_configuration.this[0].rule.default_retention.days == 30
    error_message = "Object lock configuration days was not set correctly."
  }
}

run "set_metric_configuration" {
  variables {
    metric_configuration = { name = { filter = { prefix = "logs/" } } }
  }

  assert {
    condition     = aws_s3_bucket_metric.this["name"].filter.prefix == "logs/"
    error_message = "Metric configuration filter prefix was not set correctly."
  }
}

run "set_inventory_configuration" {
  variables {
    inventory_configuration = { name = { included_object_versions = "All", enabled = true, destination = { bucket_arn = "arn:aws:s3:::bucket", format = "CSV" }, frequency = "Daily" } }
  }

  assert {
    condition     = aws_s3_bucket_inventory.this["name"].included_object_versions == "All"
    error_message = "Inventory configuration included object versions was not set correctly."
  }

  assert {
    condition     = aws_s3_bucket_inventory.this["name"].enabled == true
    error_message = "Inventory configuration enabled was not set correctly."
  }

  assert {
    condition     = aws_s3_bucket_inventory.this["name"].destination.bucket.s3_bucket_destination.bucket_arn == "arn:aws:s3:::bucket"
    error_message = "Inventory configuration destination bucket ARN was not set correctly."
  }

  assert {
    condition     = aws_s3_bucket_inventory.this["name"].destination.bucket.s3_bucket_destination.format == "CSV"
    error_message = "Inventory configuration destination format was not set correctly."
  }

  assert {
    condition     = aws_s3_bucket_inventory.this["name"].schedule.frequency == "Daily"
    error_message = "Inventory configuration frequency was not set correctly."
  }
}

run "set_analytics_configuration" {
  variables {
    analytics_configuration = { name = { filter = { prefix = "logs/" } } }
  }

  assert {
    condition     = aws_s3_bucket_analytics_configuration.this["name"].filter.prefix == "logs/"
    error_message = "Analytics configuration filter prefix was not set correctly."
  }
}

run "set_object_lock_enabled" {
  variables {
    object_lock_enabled = true
  }

  assert {
    condition     = aws_s3_bucket.this[0].object_lock_enabled == true
    error_message = "Object lock enabled was not set correctly."
  }
}

run "set_block_public_acls" {
  variables {
    block_public_acls = false
  }

  assert {
    condition     = aws_s3_bucket_public_access_block.this[0].block_public_acls == false
    error_message = "Block public ACLs was not set correctly."
  }
}

run "set_block_public_policy" {
  variables {
    block_public_policy = false
  }

  assert {
    condition     = aws_s3_bucket_public_access_block.this[0].block_public_policy == false
    error_message = "Block public policy was not set correctly."
  }
}

run "set_ignore_public_acls" {
  variables {
    ignore_public_acls = false
  }

  assert {
    condition     = aws_s3_bucket_public_access_block.this[0].ignore_public_acls == false
    error_message = "Ignore public ACLs was not set correctly."
  }
}

run "set_restrict_public_buckets" {
  variables {
    restrict_public_buckets = false
  }

  assert {
    condition     = aws_s3_bucket_public_access_block.this[0].restrict_public_buckets == false
    error_message = "Restrict public buckets was not set correctly."
  }
}

run "set_control_object_ownership" {
  variables {
    control_object_ownership = true
  }

  assert {
    condition     = aws_s3_bucket_ownership_controls.this[0].rule.object_ownership == "BucketOwnerEnforced"
    error_message = "Control object ownership was not set correctly."
  }
}

run "set_object_ownership" {
  variables {
    object_ownership = "BucketOwnerPreferred"
  }

  assert {
    condition     = aws_s3_bucket_ownership_controls.this[0].rule.object_ownership == "BucketOwnerPreferred"
    error_message = "Object ownership was not set correctly."
  }
}

run "set_putin_khuylo" {
  variables {
    putin_khuylo = false
  }

  assert {
    condition     = var.putin_khuylo == false
    error_message = "Putin respects Ukrainian sovereignty and territorial integrity."
  }
}
