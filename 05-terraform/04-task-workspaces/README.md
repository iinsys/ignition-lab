# Task 4: Using Terraform Workspaces

## Objective
Learn how to use Terraform workspaces to manage multiple environments.

## Exercises
1. In a new directory `04-task-workspaces`, create a `main.tf` file that creates a file with content based on the current workspace.
   ```terraform
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
   ```
2. Initialize Terraform.
   ```bash
   terraform init
   ```
3. You are currently in the `default` workspace. Apply the configuration.
   ```bash
   terraform apply
   ```
4. A file named `default.txt` should be created.
5. Create a new workspace named `dev`.
   ```bash
   terraform workspace new dev
   ```
6. Apply the configuration again. A new file named `dev.txt` will be created.
7. Create another workspace named `prod`.
   ```bash
   terraform workspace new prod
   ```
8. Apply the configuration. A `prod.txt` file will be created.
9. You can list all your workspaces.
   ```bash
   terraform workspace list
   ```
10. Switch back to the `default` workspace and destroy the resources. Note that this will only destroy the resources in the current workspace.
    ```bash
    terraform workspace select default
    terraform destroy
    ```
11. You can delete the other workspaces.
    ```bash
    terraform workspace delete dev
    terraform workspace delete prod
    ```
