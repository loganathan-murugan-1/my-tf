output "cluster_arn" {
  value = aws_eks_cluster.eks.cluster_arn
}

output "cluster_endpoint" {
  value = aws_eks_cluster.eks.cluster_endpoint
}

output "cluster_id" {
  value = aws_eks_cluster.eks.cluster_id
}
