# Banco de Dados PostgreSQL para Produção
resource "digitalocean_database_cluster" "prod" {
  name       = var.db_prod_name
  engine     = "pg"
  version    = "16" # Verifique a versão mais recente suportada pela DO
  size       = var.db_prod_node_size
  region     = var.do_region
  node_count = var.db_prod_num_nodes
  vpc_uuid   = digitalocean_vpc.main.id # Associar à VPC

  # Configurações adicionais para produção (opcional)
  # backups_enabled = true # Backups são habilitados por padrão
  # maintenance_window {
  #   day_of_week = "monday"
  #   hour_of_day = "03:00"
  # }

  tags = [var.project_name, "postgres", "production"]
}

# Banco de Dados PostgreSQL para Homologação
resource "digitalocean_database_cluster" "homolog" {
  name       = var.db_homolog_name
  engine     = "pg"
  version    = "16" # Verifique a versão mais recente suportada pela DO
  size       = var.db_homolog_node_size
  region     = var.do_region
  node_count = var.db_homolog_num_nodes
  vpc_uuid   = digitalocean_vpc.main.id # Associar à VPC

  tags = [var.project_name, "postgres", "homologation"]
}

# Para o usuário e senha do DB, a DigitalOcean cria um usuário 'doadmin' padrão.
# Você pode criar usuários adicionais via Terraform ou usar as credenciais doadmin
# que são geradas e podem ser acessadas via output ou interface da DO.
# Para manter a simplicidade, vamos usar o doadmin e capturar as credenciais no output.
# Se precisar criar um usuário específico com suas variáveis:
/*
resource "digitalocean_database_user" "app_user_prod" {
  cluster_id = digitalocean_database_cluster.prod.id
  name       = var.db_master_username # Usaria a variável definida
  password   = var.db_master_password # Usaria a variável definida
}
*/