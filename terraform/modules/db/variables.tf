variable "public_key_path" {
  # Описание переменной
  description = "Path to the public key used for ssh access"
  default     = "~/.ssh/yc.pub"
}
variable "private_key_path" {
  description = "path to private key"
  default     = "~/.ssh/yc"
}
variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "fd8f82bhflu4e2igk2aq"
}
variable "subnet_id" {
  description = "Subnet"
  default     = "e9b1pg9dl5t171r0augt"
}
