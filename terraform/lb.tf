resource "yandex_lb_network_load_balancer" "ext-lb-test" {
  name                = "ext-lb-test-1"
  type                = "external"
#  deletion_protection = "false"
  depends_on          = [yandex_lb_target_group.foo]
  listener {
    name        = "test-listener"
    port        = 9292
    target_port = 9292
    protocol    = "tcp"
    external_address_spec {
      ip_version = "ipv4"
    }
  }
  attached_target_group {
    target_group_id = "${yandex_lb_target_group.foo.id}"
    healthcheck {
      name                = "http"
      interval            = 2
      timeout             = 1
      unhealthy_threshold = 2
      healthy_threshold   = 2
      http_options {
        port = 9292
        path = "/"
      }
    }
  }
}
