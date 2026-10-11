variable "compute_project_metadata_items" {
  description = <<EOT
Map of compute_project_metadata_items, attributes below
Required:
    - key
    - value
Optional:
    - deletion_policy
    - project
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    key             = string
    value           = string
    deletion_policy = optional(string)
    project         = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

