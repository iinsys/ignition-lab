# Task 2: Using Variables and Outputs

## Objective
Learn how to use input variables to parameterize your Terraform code and how to use output values to display information about your resources.

## Exercises
1. In a new directory `02-task-variables-and-outputs`, create a `main.tf` file that uses a variable to define the content of a local file.
   ```terraform
   variable "file_content" {
     description = "The content of the file."
     type        = string
     default     = "Hello, from a variable!"
   }

   resource "local_file" "hello" {
     content  = var.file_content
     filename = "${path.module}/hello.txt"
   }
   ```
2. Create an `outputs.tf` file to output the filename.
   ```terraform
   output "filename" {
     value = local_file.hello.filename
   }
   ```
3. Initialize and apply the configuration.
   ```bash
   terraform init
   terraform apply
   ```
4. You will see the `filename` output in the console.
5. Now, override the default value of the variable by using a `-var` flag.
   ```bash
   terraform apply -var="file_content=Hello from the command line!"
   ```
6. Check the content of the `hello.txt` file. It should be updated.
7. Destroy the resources.
   ```bash
   terraform destroy
   ```
