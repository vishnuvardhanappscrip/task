
output "cluster_id" {
  description = "EKS cluster ID."
  value       = module.eks.cluster_id
}


output "cluster_security_group_id" {
  description = "Security group ids attached to the cluster control plane."
  value       = module.eks.cluster_security_group_id
}

output "region" {
  description = "AWS region"
  value       = var.aws_region
}

output "oidc_provider_arn" {
  value = module.eks.oidc_provider_arn
}

# outputs.tf

# Data source to get the AWS Account ID
data "aws_caller_identity" "current" {}

# Output the generated kubeconfig content
output "kubeconfig" {
  description = "Kubeconfig credentials to access the cluster."
  value       = templatefile("${path.module}/kubeconfig.tpl", {
    cluster_certificate_authority_data = module.eks.cluster_certificate_authority_data
    cluster_endpoint                   = module.eks.cluster_endpoint
    cluster_name                       = module.eks.cluster_name
    aws_region                         = var.aws_region # Make sure var.aws_region is passed or defined
    aws_account_id                     = data.aws_caller_identity.current.account_id
  })
#  sensitive   = true
}

# Standard outputs (highly recommended for easy access)
output "cluster_name" {
  description = "The name of the EKS cluster."
  value       = module.eks.cluster_name
}

output "aws_region" {
  description = "The AWS region where the EKS cluster is deployed (from variables.tf)."
  value       = var.aws_region
}

output "cluster_endpoint" {
  description = "The endpoint for the EKS cluster API."
  value       = module.eks.cluster_endpoint
}
