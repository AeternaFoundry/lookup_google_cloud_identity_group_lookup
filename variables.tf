variable "cloud_identity_group_lookup_lookup" {
  description = <<EOT
Map of cloud_identity_group_lookup_lookup, attributes below
Required:
    - group_key (block):
        - id (required)
        - namespace (optional)
EOT

  type = map(object({
    group_key = object({
      id        = string
      namespace = optional(string)
    })
  }))
}

