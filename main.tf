locals {
  generate_password   = var.basic_auth_password == null || var.basic_auth_password == ""
  basic_auth_user     = var.basic_auth_user
  basic_auth_password = local.generate_password ? random_password.faasd[0].result : var.basic_auth_password
}

resource "random_password" "faasd" {
  count   = local.generate_password ? 1 : 0
  length  = 16
  special = false
}

data "template_file" "script" {
  template = file("./templates/startup-build.tpl")

  vars = {
    basic_auth_user     = local.basic_auth_user
    basic_auth_password = local.basic_auth_password
    faasd_domain_name   = var.domain
    letsencrypt_email   = var.email
  }
}

resource "cloudscale_server_group" "faasdserver-group" {
  name      = "testserver-group"
  type      = "anti-affinity"
  zone_slug = var.zone_slug
}

resource "cloudscale_server" "faasdserver" {
  name               = var.hostname
  flavor_slug        = var.flavor_slug
  image_slug         = var.image_slug
  zone_slug          = var.zone_slug
  server_group_ids   = [cloudscale_server_group.faasdserver-group.id]
  use_public_network = true
  user_data          = data.template_file.script.rendered
  ssh_keys           = [var.public_key]
}
