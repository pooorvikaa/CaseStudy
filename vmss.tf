resource "azurerm_virtual_machine_scale_set" "vmss" {
  name                = "vmss"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  upgrade_policy_mode = "Manual"

  sku {
    name     = "Standard_DS1_v2"
    tier     = "Standard"
    capacity = 2
  }

  os_profile {
    computer_name_prefix = "vmss"
    admin_username       = "adminuser"
    admin_password       = "admin"
  }

  os_profile_linux_config {
    disable_password_authentication = false
  }

  storage_profile_image_reference {
    publisher = "Canonical"
    offer     = "UbuntuServer"
    sku       = "18.04-LTS"
    version   = "latest"
  }

  storage_profile_os_disk {
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  network_profile {
    name    = "nic"
    primary = true

    ip_configuration {
      name                                   = "internal"
      subnet_id                              = azurerm_subnet.public.id
      primary                                = true
      load_balancer_backend_address_pool_ids = [azurerm_application_gateway.app_gateway.backend_address_pool.id]
    }
  }
}

