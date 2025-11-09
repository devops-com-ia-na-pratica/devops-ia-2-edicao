variable "digitalocean_token" {
  description = "Token de API da DigitalOcean (sensível)"
  type        = string
  sensitive   = true # Marca como sensível para não ser exibido em outputs
}

variable "do_region" {
  description = "Região da DigitalOcean para deploy"
  type        = string
  default     = "nyc3" # Ex: nyc3, sfo3, fra1, etc.
}

variable "project_name" {
  description = "Nome do projeto para identificação dos recursos"
  type        = string
  default     = "meu-projeto-do-kube-db"
}

# VPC
variable "vpc_name" {
  description = "Nome da VPC na DigitalOcean"
  type        = string
  default     = "minha-vpc-kube"
}

# DOKS (DigitalOcean Kubernetes)
variable "cluster_name" {
  description = "Nome do cluster Kubernetes"
  type        = string
  default     = "meu-doks-cluster"
}

variable "kubernetes_version" {
  description = "Versão do Kubernetes. Verifique as versões disponíveis na DO."
  type        = string
  default     = "1.28.2-do.0" # Verifique as versões mais recentes na DO
}

variable "node_pool_name" {
  description = "Nome do pool de nós do Kubernetes"
  type        = string
  default     = "worker-pool"
}

variable "node_pool_size" {
  description = "Tamanho do droplet para os worker nodes do DOKS"
  type        = string
  default     = "s-2vcpu-4gb" # Ex: s-2vcpu-4gb, s-4vcpu-8gb, etc.
}

variable "node_pool_count" {
  description = "Número de worker nodes no cluster DOKS"
  type        = number
  default     = 2
}

# PostgreSQL Database (Produção)
variable "db_prod_name" {
  description = "Nome do banco de dados de produção"
  type        = string
  default     = "prod-db-postgres"
}

variable "db_prod_node_size" {
  description = "Tamanho do nó para o banco de dados de produção"
  type        = string
  default     = "db-s-2vcpu-4gb" # Ex: db-s-2vcpu-4gb, db-s-4vcpu-8gb
}

variable "db_prod_num_nodes" {
  description = "Número de nós para o banco de dados de produção (mín. 1, 2+ para HA)"
  type        = number
  default     = 2 # Para alta disponibilidade
}

# PostgreSQL Database (Homologação)
variable "db_homolog_name" {
  description = "Nome do banco de dados de homologação"
  type        = string
  default     = "homolog-db-postgres"
}

variable "db_homolog_node_size" {
  description = "Tamanho do nó para o banco de dados de homologação"
  type        = string
  default     = "db-s-1vcpu-2gb" # Ex: db-s-1vcpu-2gb
}

variable "db_homolog_num_nodes" {
  description = "Número de nós para o banco de dados de homologação (geralmente 1)"
  type        = number
  default     = 1
}

# Variáveis sensíveis do DB (serão carregadas de forma segura)
variable "db_master_username" {
  description = "Nome de usuário mestre para o banco de dados PostgreSQL"
  type        = string
  sensitive   = true
}

variable "db_master_password" {
  description = "Senha mestre para o banco de dados PostgreSQL"
  type        = string
  sensitive   = true
}