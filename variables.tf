variable "oam_links" {
  description = <<EOT
Map of oam_links, attributes below
Required:
    - label_template
    - resource_types
    - sink_identifier
Optional:
    - region
    - tags
    - tags_all
    - link_configuration (block):
        - log_group_configuration (optional, block):
            - filter (required)
        - metric_configuration (optional, block):
            - filter (required)
EOT

  type = map(object({
    label_template  = string
    resource_types  = set(string)
    sink_identifier = string
    region          = optional(string)
    tags            = optional(map(string))
    tags_all        = optional(map(string))
    link_configuration = optional(object({
      log_group_configuration = optional(object({
        filter = string
      }))
      metric_configuration = optional(object({
        filter = string
      }))
    }))
  }))
  # Note: 3 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

