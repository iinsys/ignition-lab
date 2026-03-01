terraform {
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.1.0"
    }
  }
}

variable "file_content" {
  description = "The content of the file."
  type        = string
  default     = "Hello, from a variable!"
}

resource "local_file" "hello" {
  content  = var.file_content
  filename = "${path.module}/hello.txt"
}
