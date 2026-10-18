resource "azurerm_network_interface" "nictest" {
  depends_on = [ azurerm_resource_group ]
   for_each =  var.vm
    name = each.value.name
    location = each.value.location
    resource_group_name = each.value.resource_group_name
    
    ip_configuration {
      name = "internal"
      private_ip_address_allocation = "Dynamic"
      subnet_id = data.azurerm_subnet.subnet_data[each.key].id
      public_ip_address_id = data.azurerm_public_ip.pip_data[each.key].id
    }
  }


resource "azurerm_linux_virtual_machine" "linuxvm" {
  for_each = var.vm
  name = each.value.name
  location = each.value.location
  resource_group_name = each.value.resource_group_name
  size = each.value.size
  admin_username = each.value.admin_username
  admin_password = each.value.admin_password
  disable_password_authentication = "false"
  network_interface_ids = [data.azurerm_network_interface.nic_data[each.key].id]
   os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }
  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
}
 