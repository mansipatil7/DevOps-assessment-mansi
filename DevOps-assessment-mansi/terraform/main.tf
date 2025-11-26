###############################################
# IAM ROLE FOR EKS CONTROL PLANE
###############################################
resource "aws_iam_role" "eks_role" {
  name = "mansi-eks-cluster-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect = "Allow",
      Principal = { Service = "eks.amazonaws.com" },
      Action    = "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "eks_cluster_policy" {
  role       = aws_iam_role.eks_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSClusterPolicy"
}

###############################################
# IAM ROLE FOR NODE GROUP
###############################################
resource "aws_iam_role" "node_role" {
  name = "mansi-eks-node-role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17",
    Statement = [{
      Effect = "Allow",
      Principal = { Service = "ec2.amazonaws.com" },
      Action    = "sts:AssumeRole"
    }]
  })
}

resource "aws_iam_role_policy_attachment" "AmazonEKSWorkerNodePolicy" {
  role       = aws_iam_role.node_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKSWorkerNodePolicy"
}

resource "aws_iam_role_policy_attachment" "AmazonEC2ContainerRegistryReadOnly" {
  role       = aws_iam_role.node_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEC2ContainerRegistryReadOnly"
}

resource "aws_iam_role_policy_attachment" "AmazonEKS_CNI_Policy" {
  role       = aws_iam_role.node_role.name
  policy_arn = "arn:aws:iam::aws:policy/AmazonEKS_CNI_Policy"
}

###############################################
# VPC MODULE
###############################################
module "vpc" {
  source          = "./modules/vpc"

  vpc_cidr        = "10.0.0.0/16"
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.11.0/24", "10.0.12.0/24"]
  azs             = ["ap-southeast-1a", "ap-southeast-1b"]
}

###############################################
# EKS MODULE
###############################################
module "eks" {
  source        = "./modules/eks"

  cluster_name  = var.cluster_name
  role_arn      = aws_iam_role.eks_role.arn
  node_role_arn = aws_iam_role.node_role.arn

  subnet_ids    = module.vpc.private_subnets

  depends_on = [
    aws_iam_role.eks_role,
    aws_iam_role.node_role
  ]
}