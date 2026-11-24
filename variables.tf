variable "roles" {
  description = <<EOT
Map of roles, attributes below
Required:
    - name
    - permissions
Optional:
    - description
EOT

  type = map(object({
    name        = string
    permissions = string
    description = optional(string)
  }))
  validation {
    condition = alltrue([
      for k, v in var.roles : (
        length(v.permissions) >= 1
      )
    ])
    error_message = "must not be empty"
  }
}

