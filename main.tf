
resource "aws_cloudtrail" "main" {
  name                          = "cloud-trail-${lower(local.full_organization_name)}"
  s3_bucket_name                = var.s3_bucket
  s3_key_prefix                 = lower(local.full_organization_name)
  include_global_service_events = true
  is_multi_region_trail         = true

  event_selector {
    read_write_type           = "All"
    include_management_events = true

    data_resource {
      type   = "AWS::Lambda::Function"
      values = ["arn:aws:lambda"]
    }
  }

  event_selector {
    read_write_type           = "All"
    include_management_events = true

    data_resource {
      type   = "AWS::S3::Object"
      values = ["arn:aws:s3:::"]
    }
  }
}