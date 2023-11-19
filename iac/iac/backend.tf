# store the terraform state file in s3 and lock with dynamodb
terraform {
  backend "s3" {
    bucket         = "terraform-rentzone-s3-state"
    key            = "rentzone/terraform.tfstate"
    region         = "eu-west-2"
    dynamodb_table = "rentzone-state-lock"
  }
}
