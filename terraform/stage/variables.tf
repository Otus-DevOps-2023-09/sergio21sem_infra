variable "cloud_id" {
  description = "Cloud"
  default     = "b1g6jpa9702uul5hrq7s"
}
variable "cloud_token" {
  description = "token"
}
variable "folder_id" {
  description = "Folder"
  default     = "b1gnm6kb1jng1pcmesi1"
}
variable "zone" {
  description = "Zone"
  # Значение по умолчанию
  default = "ru-central1-a"
}
variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
  default     = "~/.ssh/yc.pub"
}
variable "private_key_path" {
  description = "path to private key"
  default     = "~/.ssh/yc"
}
variable "image_id" {
  description = "Disk image"
  default     = "fd81ukh8uqf82ibaue1h"
}
variable "subnet_id" {
  description = "Subnet"
  default     = "e9b1pg9dl5t171r0augt"
}
variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "fd80hkpns99fn47ol9cf"
}
variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "fd8f82bhflu4e2igk2aq"
}
