provider "aws" {
  region = "us-east-1"
  access_key = "AKIATML7KZGYBLIUPT72"
  secret_key = "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"
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  name = "raj"

  ami                    = "ami-087c17d1fe0178315"
  instance_type          = "t2.micro"
  monitoring             = true
  vpc_security_group_ids = ["sg-0658ce05b3e13cfae"]
  subnet_id              = "subnet-02d9b7b0345d0c714"

  tags = {
    Terraform   = "true"
    Environment = "poc"
  }
}
