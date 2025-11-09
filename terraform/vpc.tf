resource "digitalocean_vpc" "main" {
  name   = var.vpc_name
  region = var.do_region
  ip_range = "10.10.0.0/20" # Um bloco CIDR privado para sua VPC
}