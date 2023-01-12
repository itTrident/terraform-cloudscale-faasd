output "basic_auth_user" {
  description = "The basic auth username"
  value       = var.basic_auth_user
}

output "basic_auth_password" {
  description = "The basic auth password"
  sensitive   = true
  value       = var.basic_auth_password
}

output "faasd_server_username" {
  description = "The username for faasd instance"
  value       = var.instance_username
}

output "faasd_server_ip" {
  description = "The public ip of faasd instance"
  value       = cloudscale_server.faasdserver.public_ipv4_address
}


