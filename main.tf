# provider "azurerm" {
#   features {}

#   subscription_id = "333929d4-fc3f-4c49-80b6-2d46995fa0f9"
# }


# resource "azurerm_virtual_network" "vnet" {
#   name                = "myVNet"
#   address_space       = ["10.0.0.0/16"]
#   location            = azurerm_resource_group.rg.location
#   resource_group_name = azurerm_resource_group.rg.name
# }

# resource "azurerm_subnet" "subnet" {
#   name                 = "mySubnet"
#   resource_group_name  = azurerm_resource_group.rg.name
#   virtual_network_name = azurerm_virtual_network.vnet.name
#   address_prefixes     = ["10.0.1.0/24"]
# }
# resource "azurerm_network_interface" "nic" {
#   name                = "myNIC"
#   location            = azurerm_resource_group.rg.location
#   resource_group_name = azurerm_resource_group.rg.name

#   ip_configuration {
#     name                          = "ipconfig1"
#     subnet_id                     = azurerm_subnet.subnet.id
#     private_ip_address_allocation = "Dynamic"
#   }
# }
# resource "azurerm_virtual_machine" "vm" {
#   name                  = "myVM"
#   location              = azurerm_resource_group.rg.location
#   resource_group_name   = azurerm_resource_group.rg.name
#   network_interface_ids = [azurerm_network_interface.nic.id]
#   vm_size               = "Standard_D2as_v6"

#   storage_os_disk {
#     name              = "myOsDisk"
#     caching           = "ReadWrite"
#     create_option     = "FromImage"
#     managed_disk_type = "Standard_LRS"
#   }

# storage_image_reference {
#   publisher = "Canonical"
#   offer     = "UbuntuServer"
#   sku       = "18_04-lts-gen2"
#   version   = "latest"
# }


#   os_profile {
#     computer_name  = "myVM"
#     admin_username = var.admin_username
#     admin_password = var.admin_password
#   }

#   os_profile_linux_config {
#     disable_password_authentication = false
#   }
# }
# resource "azurerm_resource_group" "rg" {
#   name     = var.resource_group_name
#   location = var.location
# }
provider "azurerm" {
  features {}

  subscription_id = "333929d4-fc3f-4c49-80b6-2d46995fa0f9"
}
resource "azurerm_resource_group" "rg" {
  name     = "MyResourceGroup"  # Correct casing
  location = "East US"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "myVNet"
  address_space       = ["10.0.0.0/16"]
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

resource "azurerm_subnet" "subnet" {
  name                 = "mySubnet"
  resource_group_name  = azurerm_resource_group.rg.name
  virtual_network_name = azurerm_virtual_network.vnet.name
  address_prefixes     = ["10.0.1.0/24"]
}

resource "azurerm_network_interface" "nic" {
  name                = "myNIC"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name

  ip_configuration {
    name                          = "ipconfig1"  # Ensure this matches Azure's existing configuration
    subnet_id                     = azurerm_subnet.subnet.id
    private_ip_address_allocation = "Dynamic"
  }
}

# resource "azurerm_virtual_machine" "vm" {
#   name                  = "myVM"
#   location              = azurerm_resource_group.rg.location
#   resource_group_name   = azurerm_resource_group.rg.name
#   network_interface_ids = [azurerm_network_interface.nic.id]
#   vm_size               = " Standard_D2as_v6 "

#   storage_os_disk {
#     name            = "myOsDisk"
#     caching         = "ReadWrite"
#     create_option   = "Attach"
#     managed_disk_id = "/subscriptions/333929d4-fc3f-4c49-80b6-2d46995fa0f9/resourceGroups/MyResourceGroup/providers/Microsoft.Compute/disks/myOsDisk"
#     os_type         = "Linux"  # Added this line
#   }

#   # Remove the os_profile and os_profile_linux_config blocks
# }