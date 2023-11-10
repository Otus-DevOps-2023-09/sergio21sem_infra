variable "cloud_id" {
  description = "Cloud ID"
}
variable "folder_id" {
  description = "Folder ID"
}
variable "service_account_key_file" {
  description = "Service account key file"
}
variable "zone" {
  description = "Zone"
  default = "ru-central1-a"
}
variable "bucket_name" {
  description = "Name of S3 bucket"
}
variable "name" {
  description = "SA User Name"
}
variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "fd80hkpns99fn47ol9cf"
}
variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "fd8f82bhflu4e2igk2aq"
}
