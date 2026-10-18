data "azurerm_subnet" "subnet_data" {
  for_each = var.vm
  name                 = each.value.subnet_name
  virtual_network_name = each.value.vnet_name
  resource_group_name  = each.value.resource_group_name
}
data "azurerm_public_ip" "pip_data" {
   for_each = var.vm
  name                 = each.value.pip_name
  resource_group_name  = each.value.resource_group_name
}

data "azurerm_network_interface" "nic_data" {
   for_each = var.vm
  name                = each.value.nic_name
  resource_group_name = each.value.resource_group_name
}
