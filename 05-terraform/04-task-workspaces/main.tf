terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
  }
}

resource "local_file" "env" {
  content  = "This is the ${terraform.workspace} environment."
  filename = "${path.module}/${terraform.workspace}.txt"
}
