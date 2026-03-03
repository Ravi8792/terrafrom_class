variable "root_bucket_name" {
	type = string
	default = "my-first-bucket-s3-backend-974218"
}

variable "root_dynamodb_name" {
	type = string
	default = "my_dynamodb_locking_table"
}

variable "root_hash_key" {
	type = string
	default = "LockID"
}


