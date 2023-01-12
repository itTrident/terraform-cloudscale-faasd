variable "public_key" {
  description = "ssh public key for the instance"
  type        = string
}
variable "hostname" {
  description = "Hostname for instance"
  type        = string
  default     = "faasd-server"
}
variable "basic_auth_user" {
  description = "The basic auth user name."
  type        = string
  default     = "admin"
}
variable "basic_auth_password" {
  description = "The basic auth password, if left empty, a random password is generated."
  type        = string
  default     = null
  sensitive   = true
}
variable "email" {
  description = "Email used to order a certificate from Let's Encrypt."
  type        = string
  default     = "null"
}
variable "domain" {
  description = "A public domain for the faasd instance. This will be consumed by Caddy and install a Let's Encrypt certificate."
  type        = string
  default     = "null"
}
variable "zone_slug" {
  description = "Zone for the instance to reside"
  type        = string
  default     = ""
}
variable "flavor_slug" {
  description = "Processor and memory for the instance"
  type        = string
  default     = ""
}
variable "image_slug" {
  description = "os for the cloudscale instance"
  type        = string
  default     = ""
}
variable "instance_username" {
  description = "Username for the instance"
  type        = string
  default     = ""
}
variable "token" {
  description = "cloudscale token"
  type        = string
  default     = ""
}