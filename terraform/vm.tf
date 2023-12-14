resource "aws_instance" "worklyfe_vm" {
  ami           = "ami-00b44d3dbe1f81742"
  instance_type = "t2.micro"     

  subnet_id     = module.vpc.private_subnets[0]
  key_name      = "worklyfe-dev"
  associate_public_ip_address = true

  tags = {
    Name        = "worklyfe-dev-vm"
    Environment = "dev"
  }
}
