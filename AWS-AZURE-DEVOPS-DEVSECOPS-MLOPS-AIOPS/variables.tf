variable "resource_groups" {
  
}

variable "virtual_networks" {
  
}

variable "subnets" {
  
}

# variable "public_ips" {
#   description = "Public IPs to create"
#   type = map(object({
#     name                = string
#     location            = string
#     resource_group_name = string
#     allocation_method   = optional(string, "Static")
#     sku                 = optional(string, "Standard")
#     tags                = optional(map(string), {})
#   }))
#   default = {}
# }

# variable "linux_vms" {
#   description = "Linux VMs to create"
#   type = map(any)
#   default = {}
# }

# variable "storage_accounts" {
#   description = "Storage accounts to create"
#   type = map(any)
#   default = {}
# }
