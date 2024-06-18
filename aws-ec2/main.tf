module "security_group" {
  source              = "./modules/security_group"
  sg_name             = var.sg_name
  sg_description      = var.sg_description
  vpc_id              = var.vpc_id
  ingress_ports       = var.ingress_ports
  egress_ports        = var.egress_ports
}

module "ec2_instance" {
  source            = "./modules/ec2_instance"
  ami_id            = var.ami_id
  instance_type     = var.instance_type
  key_name          = var.key_name
  instance_name     = var.instance_name
  security_group_id = module.security_group.security_group_id
}

