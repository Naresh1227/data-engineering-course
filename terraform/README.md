# Terraform scaffold

Minimal Terraform project scaffold with an example AWS S3 bucket.

Quick start:

```bash
cd terraform
terraform init
terraform plan -var='bucket_name=your-unique-bucket-name'
terraform apply -var='bucket_name=your-unique-bucket-name'
```

Edit `backend.tf` to configure remote state if needed.
