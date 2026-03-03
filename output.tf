output "bucket_name" {
	description ="This is s3 bucket name"
	value = module.create_s3_bucket.my_bucket_name
}