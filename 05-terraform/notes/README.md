# Terraform Notes

## What is Terraform?
Terraform is an open-source infrastructure as code (IaC) software tool created by HashiCorp. It enables users to define and provision a datacenter infrastructure using a high-level configuration language known as HashiCorp Configuration Language (HCL), or optionally JSON.

## Key Concepts
- **Providers:** Terraform relies on providers to interact with cloud providers, SaaS providers, and other APIs.
- **Resources:** Resources are the most important element in the Terraform language. Each resource block describes one or more infrastructure objects, such as virtual networks, compute instances, or higher-level components such as DNS records.
- **Variables:** Terraform variables allow you to write reusable and flexible code.
- **Outputs:** Output values are like the return values of a Terraform module.
- **State:** Terraform must store state about your managed infrastructure and configuration. This state is used by Terraform to map real-world resources to your configuration, keep track of metadata, and to improve performance for large infrastructures.
