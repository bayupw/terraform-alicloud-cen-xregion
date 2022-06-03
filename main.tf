# Create an Alibaba Cloud CEN Instance
resource "alicloud_cen_instance" "this" {
  cen_instance_name = var.name
  description       = var.description
}

# Create CEN instance attachment
resource "alicloud_cen_instance_attachment" "this" {
  for_each = var.cen_attachments

  instance_id              = alicloud_cen_instance.this.id
  child_instance_id        = each.value.vpc_id
  child_instance_region_id = each.value.region_id
  child_instance_type      = each.value.attachment_type

  depends_on = [alicloud_cen_instance.this]
}