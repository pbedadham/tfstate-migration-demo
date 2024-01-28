# backend.tf

terraform {
  backend "s3" {
    bucket         = "demo-tf-state-s3" # your-remote-state-bucket-name
    #key            = "terraform.tfstate" # Original Path
    key            = "global/app1/terraform.tfstate" # New Path
    region         = "us-east-2"  # Change this to your desired AWS region
    encrypt        = true
    dynamodb_table = "terraform-lock"  # Optional: Enables state locking with DynamoDB
  }
}

