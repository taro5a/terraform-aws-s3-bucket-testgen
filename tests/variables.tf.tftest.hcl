

# WARNING: Generated module tests should be considered experimental and be reviewed by the module author.
provider "aws" {
  region = "us-west-2"
}

run "create_bucket" {
  assert {
    condition     = var.create_bucket == true
    error_message = "create_bucket variable is incorrect."
  }
}

run "attach_elb_log_delivery_policy" {
  assert {
    condition     = var.attach_elb_log_delivery_policy == false
    error_message = "attach_elb_log_delivery_policy variable is incorrect."
  }
}

run "attach_lb_log_delivery_policy" {
  assert {
    condition     = var.attach_lb_log_delivery_policy == false
    error_message = "attach_lb_log_delivery_policy variable is incorrect."
  }
}

run "attach_access_log_delivery_policy" {
  assert {
    condition     = var.attach_access_log_delivery_policy == false
    error_message = "attach_access_log_delivery_policy variable is incorrect."
  }
}

run "attach_deny_insecure_transport_policy" {
  assert {
    condition     = var.attach_deny_insecure_transport_policy == false
    error_message = "attach_deny_insecure_transport_policy variable is incorrect."
  }
}

run "attach_require_latest_tls_policy" {
  assert {
    condition     = var.attach_require_latest_tls_policy == false
    error_message = "attach_require_latest_tls_policy variable is incorrect."
  }
}

run "attach_policy" {
  assert {
    condition     = var.attach_policy == false
    error_message = "attach_policy variable is incorrect."
  }
}

run "attach_public_policy" {
  assert {
    condition     = var.attach_public_policy == true
    error_message = "attach_public_policy variable is incorrect."
  }
}

run "attach_inventory_destination_policy" {
  assert {
    condition     = var.attach_inventory_destination_policy == false
    error_message = "attach_inventory_destination_policy variable is incorrect."
  }
}

run "attach_analytics_destination_policy" {
  assert {
    condition     = var.attach_analytics_destination_policy == false
    error_message = "attach_analytics_destination_policy variable is incorrect."
  }
}

run "attach_deny_incorrect_encryption_headers" {
  assert {
    condition     = var.attach_deny_incorrect_encryption_headers == false
    error_message = "attach_deny_incorrect_encryption_headers variable is incorrect."
  }
}

run "attach_deny_incorrect_kms_key_sse" {
  assert {
    condition     = var.attach_deny_incorrect_kms_key_sse == false
    error_message = "attach_deny_incorrect_kms_key_sse variable is incorrect."
  }
}

run "allowed_kms_key_arn" {
  assert {
    condition     = var.allowed_kms_key_arn == null
    error_message = "allowed_kms_key_arn variable is incorrect."
  }
}

run "attach_deny_unencrypted_object_uploads" {
  assert {
    condition     = var.attach_deny_unencrypted_object_uploads == false
    error_message = "attach_deny_unencrypted_object_uploads variable is incorrect."
  }
}

run "bucket" {
  assert {
    condition     = var.bucket == null
    error_message = "bucket variable is incorrect."
  }
}

run "bucket_prefix" {
  assert {
    condition     = var.bucket_prefix == null
    error_message = "bucket_prefix variable is incorrect."
  }
}

run "acl" {
  assert {
    condition     = var.acl == null
    error_message = "acl variable is incorrect."
  }
}

run "policy" {
  assert {
    condition     = var.policy == null
    error_message = "policy variable is incorrect."
  }
}

run "tags" {
  assert {
    condition     = var.tags == {}
    error_message = "tags variable is incorrect."
  }
}

run "force_destroy" {
  assert {
    condition     = var.force_destroy == false
    error_message = "force_destroy variable is incorrect."
  }
}

run "acceleration_status" {
  assert {
    condition     = var.acceleration_status == null
    error_message = "acceleration_status variable is incorrect."
  }
}

run "request_payer" {
  assert {
    condition     = var.request_payer == null
    error_message = "request_payer variable is incorrect."
  }
}

run "website" {
  assert {
    condition     = var.website == {}
    error_message = "website variable is incorrect."
  }
}

run "cors_rule" {
  assert {
    condition     = var.cors_rule == []
    error_message = "cors_rule variable is incorrect."
  }
}

run "versioning" {
  assert {
    condition     = var.versioning == {}
    error_message = "versioning variable is incorrect."
  }
}

run "logging" {
  assert {
    condition     = var.logging == {}
    error_message = "logging variable is incorrect."
  }
}

run "access_log_delivery_policy_source_buckets" {
  assert {
    condition     = var.access_log_delivery_policy_source_buckets == []
    error_message = "access_log_delivery_policy_source_buckets variable is incorrect."
  }
}

run "access_log_delivery_policy_source_accounts" {
  assert {
    condition     = var.access_log_delivery_policy_source_accounts == []
    error_message = "access_log_delivery_policy_source_accounts variable is incorrect."
  }
}

run "grant" {
  assert {
    condition     = var.grant == []
    error_message = "grant variable is incorrect."
  }
}

run "owner" {
  assert {
    condition     = var.owner == {}
    error_message = "owner variable is incorrect."
  }
}

run "expected_bucket_owner" {
  assert {
    condition     = var.expected_bucket_owner == null
    error_message = "expected_bucket_owner variable is incorrect."
  }
}

run "lifecycle_rule" {
  assert {
    condition     = var.lifecycle_rule == []
    error_message = "lifecycle_rule variable is incorrect."
  }
}

run "replication_configuration" {
  assert {
    condition     = var.replication_configuration == {}
    error_message = "replication_configuration variable is incorrect."
  }
}

run "server_side_encryption_configuration" {
  assert {
    condition     = var.server_side_encryption_configuration == {}
    error_message = "server_side_encryption_configuration variable is incorrect."
  }
}

run "intelligent_tiering" {
  assert {
    condition     = var.intelligent_tiering == {}
    error_message = "intelligent_tiering variable is incorrect."
  }
}

run "object_lock_configuration" {
  assert {
    condition     = var.object_lock_configuration == {}
    error_message = "object_lock_configuration variable is incorrect."
  }
}

run "metric_configuration" {
  assert {
    condition     = var.metric_configuration == []
    error_message = "metric_configuration variable is incorrect."
  }
}

run "inventory_configuration" {
  assert {
    condition     = var.inventory_configuration == {}
    error_message = "inventory_configuration variable is incorrect."
  }
}

run "inventory_source_account_id" {
  assert {
    condition     = var.inventory_source_account_id == null
    error_message = "inventory_source_account_id variable is incorrect."
  }
}

run "inventory_source_bucket_arn" {
  assert {
    condition     = var.inventory_source_bucket_arn == null
    error_message = "inventory_source_bucket_arn variable is incorrect."
  }
}

run "inventory_self_source_destination" {
  assert {
    condition     = var.inventory_self_source_destination == false
    error_message = "inventory_self_source_destination variable is incorrect."
  }
}

run "analytics_configuration" {
  assert {
    condition     = var.analytics_configuration == {}
    error_message = "analytics_configuration variable is incorrect."
  }
}

run "analytics_source_account_id" {
  assert {
    condition     = var.analytics_source_account_id == null
    error_message = "analytics_source_account_id variable is incorrect."
  }
}

run "analytics_source_bucket_arn" {
  assert {
    condition     = var.analytics_source_bucket_arn == null
    error_message = "analytics_source_bucket_arn variable is incorrect."
  }
}

run "analytics_self_source_destination" {
  assert {
    condition     = var.analytics_self_source_destination == false
    error_message = "analytics_self_source_destination variable is incorrect."
  }
}

run "object_lock_enabled" {
  assert {
    condition     = var.object_lock_enabled == false
    error_message = "object_lock_enabled variable is incorrect."
  }
}

run "block_public_acls" {
  assert {
    condition     = var.block_public_acls == true
    error_message = "block_public_acls variable is incorrect."
  }
}

run "block_public_policy" {
  assert {
    condition     = var.block_public_policy == true
    error_message = "block_public_policy variable is incorrect."
  }
}

run "ignore_public_acls" {
  assert {
    condition     = var.ignore_public_acls == true
    error_message = "ignore_public_acls variable is incorrect."
  }
}

run "restrict_public_buckets" {
  assert {
    condition     = var.restrict_public_buckets == true
    error_message = "restrict_public_buckets variable is incorrect."
  }
}

run "control_object_ownership" {
  assert {
    condition     = var.control_object_ownership == false
    error_message = "control_object_ownership variable is incorrect."
  }
}

run "object_ownership" {
  assert {
    condition     = var.object_ownership == "BucketOwnerEnforced"
    error_message = "object_ownership variable is incorrect."
  }
}

run "putin_khuylo" {
  assert {
    condition     = var.putin_khuylo == true
    error_message = "putin_khuylo variable is incorrect."
  }
}
