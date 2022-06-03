output "cen" {
  description = "CEN instance object"
  value       = alicloud_cen_instance.this
}

output "cen_attachments" {
  description = "CEN attachment objects"
  value       = alicloud_cen_instance_attachment.this
}