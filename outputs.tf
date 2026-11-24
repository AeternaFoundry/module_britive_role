output "roles_id" {
  description = "Map of id values across all roles, keyed the same as var.roles"
  value       = { for k, v in britive_role.roles : k => v.id }
}
output "roles_description" {
  description = "Map of description values across all roles, keyed the same as var.roles"
  value       = { for k, v in britive_role.roles : k => v.description }
}
output "roles_name" {
  description = "Map of name values across all roles, keyed the same as var.roles"
  value       = { for k, v in britive_role.roles : k => v.name }
}
output "roles_permissions" {
  description = "Map of permissions values across all roles, keyed the same as var.roles"
  value       = { for k, v in britive_role.roles : k => v.permissions }
}

