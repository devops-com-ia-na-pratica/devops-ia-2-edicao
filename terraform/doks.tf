resource "digitalocean_kubernetes_cluster" "main" {
  name    = var.cluster_name
  region  = var.do_region
  version = var.kubernetes_version
  vpc_uuid = digitalocean_vpc.main.id

  node_pool {
    name       = var.node_pool_name
    size       = var.node_pool_size
    node_count = var.node_pool_count
  }

  tags = [var.project_name, "kubernetes", "production"]
}