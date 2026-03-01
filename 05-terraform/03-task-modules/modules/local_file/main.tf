variable "filename" {
  description = "The name of the file."
  type        = string
}

variable "content" {
  description = "The content of the file."
  type        = string
}

resource "local_file" "file" {
  content  = var.content
  filename = var.filename
}
