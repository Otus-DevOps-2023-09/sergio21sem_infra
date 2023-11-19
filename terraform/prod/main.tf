terraform {
#  required_providers {
#    yandex = {
#      source = "yandex-cloud/yandex"
#    }
#  }
#  required_version = ">= 0.13"
  backend "s3" {
    endpoint                    = "storage.yandexcloud.net"
    bucket                      = "sergio21sem"
    region                      = "ru-central1"
    key                         = "terraform/prod/terraform.tfstate"
    skip_region_validation      = true
    skip_credentials_validation = true
  }
}

provider "yandex" {
  token     = var.cloud_token
  cloud_id  = var.cloud_id
  folder_id = var.folder_id
  zone      = var.zone
}

module "app" {
  source          = "../modules/app"
  public_key_path = var.public_key_path
  app_disk_image  = var.app_disk_image
  subnet_id       = var.subnet_id
}

module "db" {
  source          = "../modules/db"
  public_key_path = var.public_key_path
  db_disk_image   = var.db_disk_image
  subnet_id       = var.subnet_id
}

#  connection {
#    type  = "ssh"
#    host  = self.network_interface.0.nat_ip_address
#    user  = "ubuntu"
#    agent = false
#    # путь до приватного ключа
#    private_key = file(var.private_key_path)
#  }

#  provisioner "file" {
#    source      = "files/puma.service"
#    destination = "/tmp/puma.service"
#  }
#
#  provisioner "remote-exec" {
#    script = "files/deploy.sh"
#  }
#
#  network_interface {
#    # Указан id подсети default-ru-central1-a
#    subnet_id = yandex_vpc_subnet.app-subnet.id
#    nat       = true
#  }
#}
