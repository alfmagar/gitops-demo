#First, define first VM's NIC
resource "azurerm_network_interface" "vm1_nic" {
  name                = var.vm1_nic_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "${var.vm1_name}-ipconfig"
    subnet_id                     = var.compute_subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

#Now, define second VM's NIC
resource "azurerm_network_interface" "vm2_nic" {
  name                = var.vm2_nic_name
  location            = var.location
  resource_group_name = var.resource_group_name

  ip_configuration {
    name                          = "${var.vm2_name}-ipconfig"
    subnet_id                     = var.compute_subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

#Define first Linux VM
resource "azurerm_linux_virtual_machine" "vm1" {
  name                            = var.vm1_name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  network_interface_ids           = [azurerm_network_interface.vm1_nic.id]
  size                            = var.vm_size
  admin_username                  = var.vm_admin_username
  admin_password                  = var.vm_admin_password
  disable_password_authentication = false

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  os_disk {
    name                 = "${var.vm1_name}-osdisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  tags = {
    environment = "demo"
  }
}

#Define second Linux VM
resource "azurerm_linux_virtual_machine" "vm2" {
  name                            = var.vm2_name
  location                        = var.location
  resource_group_name             = var.resource_group_name
  network_interface_ids           = [azurerm_network_interface.vm2_nic.id]
  size                            = var.vm_size
  admin_username                  = var.vm_admin_username
  admin_password                  = var.vm_admin_password
  disable_password_authentication = false

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }

  os_disk {
    name                 = "${var.vm2_name}-osdisk"
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  tags = {
    environment = "demo"
  }
}