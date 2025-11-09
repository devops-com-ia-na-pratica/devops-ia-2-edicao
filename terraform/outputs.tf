output "vpc_id" {
  description = "ID da VPC criada na DigitalOcean"
  value       = digitalocean_vpc.main.id
}

output "doks_cluster_name" {
  description = "Nome do cluster Kubernetes da DigitalOcean"
  value       = digitalocean_kubernetes_cluster.main.name
}

output "doks_cluster_id" {
  description = "ID do cluster Kubernetes da DigitalOcean"
  value       = digitalocean_kubernetes_cluster.main.id
}

output "doks_kubeconfig" {
  description = "Arquivo Kubeconfig para acessar o cluster DOKS"
  value       = digitalocean_kubernetes_cluster.main.kube_config_raw
  sensitive   = true # Contém credenciais de acesso
}

output "db_prod_host" {
  description = "Endpoint do banco de dados PostgreSQL de Produção"
  value       = digitalocean_database_cluster.prod.host
  sensitive   = true
}

output "db_prod_port" {
  description = "Porta do banco de dados PostgreSQL de Produção"
  value       = digitalocean_database_cluster.prod.port
}

output "db_prod_uri" {
  description = "URI de conexão do banco de dados PostgreSQL de Produção"
  value       = digitalocean_database_cluster.prod.uri
  sensitive   = true
}

output "db_homolog_host" {
  description = "Endpoint do banco de dados PostgreSQL de Homologação"
  value       = digitalocean_database_cluster.homolog.host
  sensitive   = true
}

output "db_homolog_port" {
  description = "Porta do banco de dados PostgreSQL de Homologação"
  value       = digitalocean_database_cluster.homolog.port
}

output "db_homolog_uri" {
  description = "URI de conexão do banco de dados PostgreSQL de Homologação"
  value       = digitalocean_database_cluster.homolog.uri
  sensitive   = true
}