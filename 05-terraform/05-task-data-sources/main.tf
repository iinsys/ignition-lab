terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
  }
}

data "local_file" "input" {
  filename = "${path.module}/input.txt"
}

resource "local_file" "output" {
  content  = "The content of input.txt is: ${data.local_file.input.content}"
  filename = "${path.module}/output.txt"
}
