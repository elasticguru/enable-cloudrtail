locals {
  compound_organization_name = "${var.organization_name}-${var.org_unit_name}"

  full_organization_name = "${var.org_unit_name == "" ? var.organization_name : local.compound_organization_name}"

  common_tags = {
    organization-full-name = "${var.organization_name} ${var.org_unit_name} ${var.environment_type}"
    application-type       = "${var.environment_type}"
    organization-unit      = "${var.org_unit_name}"
    organization           = "${var.organization_name}"
  }
}
