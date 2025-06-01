locals {
  region         = "ap-northeast-1" # Tokyo region"
  name           = "kube-auto-stack"
  vpc_cidr       = "10.0.0.0/16"
  azs            = ["ap-northeast-1a", "ap-northeast-1d"]
  private_subnet = ["10.0.1.0/24", "10.0.2.0/24"]
  public_subnet  = ["10.0.101.0/24", "10.0.102.0/24"]
  intra_subnet   = ["10.0.5.0/24", "10.0.6.0/24"]
  env            = "dev"
}