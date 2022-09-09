## Iam
output "strapi_user_access_key" {
  value = aws_iam_access_key.strapi.id
}

output "strapi_user_secret_key" {
  value     = aws_iam_access_key.strapi.secret
  sensitive = true
}


# Network
output "vpc_cidr" {
  value = module.vpc.vpc_cidr_block
}


## Database
output "db_cluster_database_name" {
  value = module.aurora_postgresql.cluster_database_name
}

output "db_cluster_endpoint" {
  value = module.aurora_postgresql.cluster_endpoint
}

output "db_cluster_port" {
  value = module.aurora_postgresql.cluster_port
}


output "db_cluster_master_username" {
  value     = module.aurora_postgresql.cluster_master_username
  sensitive = true
}

output "db_cluster_master_password" {
  value     = module.aurora_postgresql.cluster_master_password
  sensitive = true
}


## Alb
output "alb_dns_name" {
  value = module.alb.lb_dns_name
}

## Storage
output "image_s3_bucket" {
  value = aws_s3_bucket.images.bucket
}

output "image_s3_domain" {
  value = aws_s3_bucket.images.bucket_domain_name
}