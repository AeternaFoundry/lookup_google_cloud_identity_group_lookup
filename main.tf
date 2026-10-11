data "google_cloud_identity_group_lookup" "cloud_identity_group_lookup_lookup" {
  for_each = var.cloud_identity_group_lookup_lookup


  group_key {
    id        = each.value.group_key.id
    namespace = each.value.group_key.namespace
  }
}

