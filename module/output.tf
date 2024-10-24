output "vm_admin_username" {
  description = "The username of the administrator configured in the Virtual Machine."
  value       = azurerm_linux_virtual_machine.example[*].admin_username
}

output "vm_name" {
  description = "Virtual machine names created."
  value       = azurerm_linux_virtual_machine.example[*].name
}