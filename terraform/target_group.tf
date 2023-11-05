resource "yandex_lb_target_group" "foo" {
  name       = "my-target-group"
  depends_on = [yandex_compute_instance.app]

  target {
    subnet_id  = var.subnet_id
    address = "${yandex_compute_instance.app[0].network_interface[0].ip_address}"
  }
  target {
    subnet_id  = var.subnet_id
    address = "${yandex_compute_instance.app[1].network_interface[0].ip_address}"
  }
}
