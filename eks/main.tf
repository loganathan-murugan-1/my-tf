resource "aws_eks_cluster" "eks" {
  name     = "${var.default_name}-my-cluster"
  role_arn = aws_iam_role.master.arn

  vpc_config {
    subnet_ids = [data.aws_subnet.public.id[0], data.aws_subnet.public.id[1]]

    depends_on = [
      aws_iam_role_policy_attachment.AmazonEKSClusterPolicy,
      aws_iam_role_policy_attachment.AmazonEKSServicePolicy,
      aws_iam_role_policy_attachment.AmazonEKSVPCResourceController,
      aws_iam_role_policy_attachment.AmazonEKSVPCResourceController,
    ]
  }
}

#################################################################################################################

resource "aws_eks_node_group" "backend" {
  cluster_name    = aws_eks_cluster.eks.name
  node_group_name = var.node_group_name
  node_role_arn   = aws_iam_role.worker.arn
  subnet_ids      = [data.aws_subnet.public.id[0], data.aws_subnet.public.id[1]]
  capacity_type   = var.capacity_type
  disk_size       = var.disk_size
  instance_types  = var.instance_types
  remote_access {
    ec2_ssh_key               = var.ec2_ssh_key
    source_security_group_ids = [data.aws_security_groups.test.id]
  }

  labels = tomap({ env = var.env })

  scaling_config {
    desired_size = var.desired_size
    max_size     = var.max_size
    min_size     = var.min_size
  }

  update_config {
    max_unavailable = var.max_unavailable
  }

  depends_on = [
    aws_iam_role_policy_attachment.AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.AmazonEC2ContainerRegistryReadOnly,
  ]
}
