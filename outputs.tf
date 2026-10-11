output "cloud_identity_group_lookup_lookup_id" {
  description = "Map of id values across all cloud_identity_group_lookup_lookup, keyed the same as var.cloud_identity_group_lookup_lookup except keys with no id are omitted"
  value       = { for k, v in data.google_cloud_identity_group_lookup.cloud_identity_group_lookup_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "cloud_identity_group_lookup_lookup_group_key" {
  description = "Map of group_key values across all cloud_identity_group_lookup_lookup, keyed the same as var.cloud_identity_group_lookup_lookup except keys with no group_key are omitted"
  value       = { for k, v in data.google_cloud_identity_group_lookup.cloud_identity_group_lookup_lookup : k => one(v.group_key) if v.group_key != null && length(v.group_key) > 0 }
}
output "cloud_identity_group_lookup_lookup_name" {
  description = "Map of name values across all cloud_identity_group_lookup_lookup, keyed the same as var.cloud_identity_group_lookup_lookup except keys with no name are omitted"
  value       = { for k, v in data.google_cloud_identity_group_lookup.cloud_identity_group_lookup_lookup : k => v.name if v.name != null && length(v.name) > 0 }
}

