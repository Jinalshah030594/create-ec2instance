terraform {
  backend "s3" {
    bucket         = "tr-state"   # Replace with your S3 bucket name
    key            = "deployment1/terraform.tfstate"       # Path where the state will be stored (can be any path inside the bucket)
    region         = "us-east-1"                       # AWS region where your S3 bucket is located
    encrypt        = true                              # Enable server-side encryption
    dynamodb_table = "terraform-lock-table"            # Replace with your DynamoDB table name
  }
}
