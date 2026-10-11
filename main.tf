resource "google_compute_project_metadata_item" "compute_project_metadata_items" {
  for_each = var.compute_project_metadata_items

  key             = each.value.key
  value           = each.value.value
  deletion_policy = each.value.deletion_policy
  project         = each.value.project

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

