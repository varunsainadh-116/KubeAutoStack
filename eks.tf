module "eks" {
  source  = "terraform-aws-modules/eks/aws"
    version = "~> 20.31"

  cluster_name    = "${local.name}-${local.env}"
  cluster_version = "1.31"
  cluster_endpoint_public_access = true

  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
  control_plane_subnet_ids = module.vpc.intra_subnets
  tags = {
    Name = "${local.name}-${local.env}-eks"
    Environment = local.env
    Terraform = "true"
  }
}