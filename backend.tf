terraform {
  backend "s3" {
    bucket = "mamzbucket"
    key    = "global/s3/terraform.tfstate"
    region = "us-east-1"

    dynamodb_table = "terraform-lock"
    encrypt  = true
  }
}
