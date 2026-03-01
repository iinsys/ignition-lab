terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
  }
}

module "hello_world" {
  source   = "./modules/local_file"
  filename = "hello_world.txt"
  content  = "Hello, World!"
}

module "hello_terraform" {
  source   = "./modules/local_file"
  filename = "hello_terraform.txt"
  content  = "Hello, Terraform!"
}
