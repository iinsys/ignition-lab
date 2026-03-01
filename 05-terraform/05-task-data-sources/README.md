# Task 5: Using Data Sources

## Objective
Learn how to use data sources to fetch information from outside of Terraform.

## Exercises
1. In a new directory `05-task-data-sources`, create a file named `input.txt` with some content.
2. Create a `main.tf` file that uses the `local_file` data source to read the content of `input.txt`.
   ```terraform
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
   ```
3. Initialize and apply the configuration.
   ```bash
   terraform init
   terraform apply
   ```
4. Verify that the `output.txt` file has been created and contains the content of the `input.txt` file.
5. Destroy the resources.
   ```bash
   terraform destroy
   ```
