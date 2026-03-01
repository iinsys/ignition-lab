# Task 1: Creating a Local File with Terraform

## Objective
Learn the basic Terraform workflow: `init`, `plan`, `apply`, and `destroy`.

## Exercises
1. In a new directory `01-task-local-file`, create a `main.tf` file with the following content:
   ```terraform
   terraform {
     required_providers {
       local = {
         source  = "hashicorp/local"
         version = "2.1.0"
       }
     }
   }

   resource "local_file" "hello" {
     content  = "Hello, Terraform!"
     filename = "${path.module}/hello.txt"
   }
   ```
2. Initialize Terraform. This will download the `local` provider.
   ```bash
   terraform init
   ```
3. Plan the changes. This will show you what Terraform is going to do.
   ```bash
   terraform plan
   ```
4. Apply the changes. This will create the `hello.txt` file.
   ```bash
   terraform apply
   ```
5. Verify that the `hello.txt` file has been created and has the correct content.
6. Destroy the resources. This will delete the `hello.txt` file.
   ```bash
   terraform destroy
   ```
7. Verify that the `hello.txt` file has been deleted.
