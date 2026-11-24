resource "britive_role" "roles" {
  for_each = var.roles

  name        = each.value.name
  permissions = each.value.permissions
  description = each.value.description
}

