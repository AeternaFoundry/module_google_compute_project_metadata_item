output "compute_project_metadata_items_id" {
  description = "Map of id values across all compute_project_metadata_items, keyed the same as var.compute_project_metadata_items except keys with no id are omitted"
  value       = { for k, v in google_compute_project_metadata_item.compute_project_metadata_items : k => v.id if v.id != null && length(v.id) > 0 }
}
output "compute_project_metadata_items_deletion_policy" {
  description = "Map of deletion_policy values across all compute_project_metadata_items, keyed the same as var.compute_project_metadata_items except keys with no deletion_policy are omitted"
  value       = { for k, v in google_compute_project_metadata_item.compute_project_metadata_items : k => v.deletion_policy if v.deletion_policy != null && length(v.deletion_policy) > 0 }
}
output "compute_project_metadata_items_key" {
  description = "Map of key values across all compute_project_metadata_items, keyed the same as var.compute_project_metadata_items except keys with no key are omitted"
  value       = { for k, v in google_compute_project_metadata_item.compute_project_metadata_items : k => v.key if v.key != null && length(v.key) > 0 }
}
output "compute_project_metadata_items_project" {
  description = "Map of project values across all compute_project_metadata_items, keyed the same as var.compute_project_metadata_items except keys with no project are omitted"
  value       = { for k, v in google_compute_project_metadata_item.compute_project_metadata_items : k => v.project if v.project != null && length(v.project) > 0 }
}
output "compute_project_metadata_items_value" {
  description = "Map of value values across all compute_project_metadata_items, keyed the same as var.compute_project_metadata_items except keys with no value are omitted"
  value       = { for k, v in google_compute_project_metadata_item.compute_project_metadata_items : k => v.value if v.value != null && length(v.value) > 0 }
}

