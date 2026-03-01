# Task 3: Using Terraform Modules

## Objective
Learn how to create and use Terraform modules to write reusable and maintainable code.

## Exercises
1. In a new directory `03-task-modules`, create a `modules/local_file` directory. This will be our module.
2. Inside the `modules/local_file` directory, create a `main.tf` file that defines a local file resource.
   ```terraform
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
   ```
3. In the root of the `03-task-modules` directory, create a `main.tf` file that uses the module to create two different files.
   ```terraform
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
   ```
4. Initialize and apply the configuration.
   ```bash
   terraform init
   terraform apply
   ```
5. Verify that both files have been created with the correct content.
6. Destroy the resources.
   ```bash
   terraform destroy
   ```
