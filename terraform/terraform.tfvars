do_region = "nyc3"
project_name = "minha-aplicacao-do"

vpc_name = "minha-aplicacao-vpc"

cluster_name = "meu-cluster-do-prod"
kubernetes_version = "1.28.2-do.0" # Verifique a versão mais atual na DigitalOcean
node_pool_name = "prod-workers"
node_pool_size = "s-2vcpu-4gb"
node_pool_count = 2

db_prod_name = "prod-database-pg"
db_prod_node_size = "db-s-2vcpu-4gb"
db_prod_num_nodes = 2

db_homolog_name = "homolog-database-pg"
db_homolog_node_size = "db-s-1vcpu-2gb"
db_homolog_num_nodes = 1