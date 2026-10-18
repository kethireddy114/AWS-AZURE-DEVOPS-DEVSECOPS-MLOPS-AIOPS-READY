module "resource_group" {
  source   = "./modules/azurerm_resource_group"
  rg = var.resource_groups

}

# module "virtual_network" {
#    depends_on = [module.resource_group]
#   source   = "./modules/azurerm_virtual_network"
#   vnet = var.virtual_networks
 
# }

# module "subnet" {
#    depends_on = [module.virtual_network]
#   source   = "./modules/azurerm_subnet"
#   subnet = var.subnets

# }

# module "public_ip" {
#   source   = "./child_modules/azurerm_public_ip"
#   for_each = var.public_ips

#   name                = each.value.name
#   location            = each.value.location
#   resource_group_name = each.value.resource_group_name
#   allocation_method   = each.value.allocation_method
#   sku                 = each.value.sku
#   tags                = each.value.tags
# }

# module "linux_virtual_machine" {
#   source   = "./child_modules/azurerm_linux_virtual_machine"
#   for_each = var.linux_vms

#   # Pass the VM object to the child module.
#   # Change these arguments to match the exact variables in your child module.
#   vm = each.value
# }

# module "storage_account" {
#   source   = "./child_modules/azure_storage_account"
#   for_each = var.storage_accounts

#   # Pass the storage-account object to the child module.
#   # Change these arguments to match the exact variables in your child module.
#   storage_account = each.value
# }
