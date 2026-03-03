terraform {
	required_version = ">=0.12" //terraform version  
	
	required_providers {
		aws = {
			version = ">=2.7.0"
		}
	}
	backend "s3" {
		bucket = "my-first-bucket-s3-backend-974218"
		key = "backend/terraform.tfstate"
		region = "us-east-1"
		dynamodb_table = "my_dynamodb_locking_table"
		encrypt = true
	}
}