output "oam_links_id" {
  description = "Map of id values across all oam_links, keyed the same as var.oam_links"
  value       = { for k, v in aws_oam_link.oam_links : k => v.id if v.id != null && length(v.id) > 0 }
}
output "oam_links_arn" {
  description = "Map of arn values across all oam_links, keyed the same as var.oam_links"
  value       = { for k, v in aws_oam_link.oam_links : k => v.arn if v.arn != null && length(v.arn) > 0 }
}
output "oam_links_label" {
  description = "Map of label values across all oam_links, keyed the same as var.oam_links"
  value       = { for k, v in aws_oam_link.oam_links : k => v.label if v.label != null && length(v.label) > 0 }
}
output "oam_links_label_template" {
  description = "Map of label_template values across all oam_links, keyed the same as var.oam_links"
  value       = { for k, v in aws_oam_link.oam_links : k => v.label_template if v.label_template != null && length(v.label_template) > 0 }
}
output "oam_links_link_configuration" {
  description = "Map of link_configuration values across all oam_links, keyed the same as var.oam_links"
  value       = { for k, v in aws_oam_link.oam_links : k => one(v.link_configuration) if v.link_configuration != null && length(v.link_configuration) > 0 }
}
output "oam_links_link_id" {
  description = "Map of link_id values across all oam_links, keyed the same as var.oam_links"
  value       = { for k, v in aws_oam_link.oam_links : k => v.link_id if v.link_id != null && length(v.link_id) > 0 }
}
output "oam_links_region" {
  description = "Map of region values across all oam_links, keyed the same as var.oam_links"
  value       = { for k, v in aws_oam_link.oam_links : k => v.region if v.region != null && length(v.region) > 0 }
}
output "oam_links_resource_types" {
  description = "Map of resource_types values across all oam_links, keyed the same as var.oam_links"
  value       = { for k, v in aws_oam_link.oam_links : k => v.resource_types if v.resource_types != null && length(v.resource_types) > 0 }
}
output "oam_links_sink_arn" {
  description = "Map of sink_arn values across all oam_links, keyed the same as var.oam_links"
  value       = { for k, v in aws_oam_link.oam_links : k => v.sink_arn if v.sink_arn != null && length(v.sink_arn) > 0 }
}
output "oam_links_sink_identifier" {
  description = "Map of sink_identifier values across all oam_links, keyed the same as var.oam_links"
  value       = { for k, v in aws_oam_link.oam_links : k => v.sink_identifier if v.sink_identifier != null && length(v.sink_identifier) > 0 }
}
output "oam_links_tags" {
  description = "Map of tags values across all oam_links, keyed the same as var.oam_links"
  value       = { for k, v in aws_oam_link.oam_links : k => v.tags if v.tags != null && length(v.tags) > 0 }
}
output "oam_links_tags_all" {
  description = "Map of tags_all values across all oam_links, keyed the same as var.oam_links"
  value       = { for k, v in aws_oam_link.oam_links : k => v.tags_all if v.tags_all != null && length(v.tags_all) > 0 }
}

