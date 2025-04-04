# Terraform State and Lock Files 

## When is the state file created?
The state file is created after the first successful execution of `terraform apply`. This file maps your Terraform configuration to the actual resources that were created in your infrastructure.

## When is the lock file present?
The lock file is present during active Terraform operations that could modify state, such as `terraform apply`, `terraform destroy`, and `terraform plan` . It exists only during the execution of these commands.

## Is the lock file always in the bucket after it is created?
No, the lock file is not always in the bucket after creation. It's a temporary file that should automatically be removed when the Terraform operation completes, fails but exits properly, or when the lock timeout period expires.
![Screenshot_20250404_094515](https://github.com/user-attachments/assets/3ab8347b-c1c4-4ff1-bde2-0470292bd462)
![Screenshot_20250404_093917](https://github.com/user-attachments/assets/ddbc901e-dec4-4809-b915-c2ab4a6c9a75)
