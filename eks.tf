module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.31"

  cluster_name                   = "${local.name}-${local.env}"
  cluster_version                = "1.31"
  cluster_endpoint_public_access = true

  # The VPC ID where the EKS cluster will be deployed
  vpc_id = module.vpc.vpc_id

  # The subnets where the EKS worker nodes will be deployed
  subnet_ids = module.vpc.private_subnets

  # The control plane subnets are used for the EKS control plane
  control_plane_subnet_ids = module.vpc.intra_subnets

  # The security group for the EKS cluster which are addons
  cluster_addons = {
    vpc-cni = { # cni == Container Network Interface
      most-recent = true
    }
    coredns = { # dns == Domain Name System
      most-recent = true
    }
    kube-proxy = { # kube-proxy is a network proxy that runs on each node in the cluster
      most-recent = true
    }
  }

  # The security group for the EKS cluster

  eks_managed_node_group_defaults = {
    instance_type                         = ["t2.medium"]
    attach_cluster_primary_security_group = true

  }

  # The EKS managed node groups
  eks_managed_node_groups = {
    kube_auto_stack = {
      instance_type    = ["t2.medium"]
      desired_capacity = 2
      max_capacity     = 3
      min_capacity     = 1
      capacity_type    = "SPOT"

    }
  }

  # The IAM role for the EKS cluster information
  tags = {
    Name        = "${local.name}-${local.env}-eks"
    Environment = local.env
    Terraform   = "true"
  }
}