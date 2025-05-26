resource "mgc_virtual_machine_instances" "basic_instance" {
  name     = var.vm_name
  machine_type = {
    name = var.machine_type
  }
  image = {
    name = var.image
  }
  network = {
    associate_public_ip = false # If true, will create a public IP
    delete_public_ip    = true
  }

  ssh_key_name = "ssh_key"
}