output "trail_name" {
  value = aws_cloudtrail.main.name
}

output "trail_prefix" {
  value = lower(local.full_organization_name)
}