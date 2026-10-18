# Resource Groups
resource_groups = {
  rg1 = {
    name     = "rg-dev1"
    location = "East US"
    
  }
  rg2 = {
    name     = "rg-dev2"
    location = "East US"
    
  }
  
}  

# Virtual Networks
virtual_networks = {
  vnetdev = {
    name                = "vnet-dev"
    location            = "East US"
    resource_group_name = "rg-dev1"
    address_space       = ["10.0.0.0/16"]
    
  }
}

# Subnets
subnets = {
  subnet1 = {
    name                 = "fe-subnet-dev"
    resource_group_name  = "rg-dev1"
    virtual_network_name = "vnet-dev"
    address_prefixes     = ["10.0.1.0/24"]
  }

  subnet2 = {
    name                 = "be-subnet-dev"
    resource_group_name  = "rg-dev1"
    virtual_network_name = "vnet-dev"
    address_prefixes     = ["10.0.2.0/24"]
  }
}

# # Public IPs
# public_ips = {
#   pipdev = {
#     name                = "pip-dev"
#     location            = "East US"
#     resource_group_name = "rg-dev"
#     allocation_method   = "Static"
#     sku                 = "Standard"
#   }
# }

# # Linux VMs
# # IMPORTANT: The keys below must match the variables expected by your
# # azurerm_linux_virtual_machine child module.
# linux_vms = {
#   vm1 = {
#     name                = "vm-dev-01"
#     location            = "East US"
#     resource_group_name = "rg-dev"
#     size                = "Standard_B1s"
#   }
# }

# # Storage Accounts
# # IMPORTANT: The keys below must match the variables expected by your
# # azure_storage_account child module.
# storage_accounts = {
#   stdev = {
#     name                = "stdevterraformlab01"
#     location            = "East US"
#     resource_group_name = "rg-dev"
#   }
# }
