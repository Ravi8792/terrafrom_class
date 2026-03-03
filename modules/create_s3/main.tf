resource "aws_s3_bucket" "my_bucket" {
	bucket = var.bucket_name
}

resource "aws_s3_bucket_versioning" "versioning_enable" {
	bucket = aws_s3_bucket.my_bucket.bucket
	versioning_configuration {
	status = "Enabled"
	}
}

resource "aws_s3_bucket_server_side_encryption_configuration" "sse" {
	bucket = aws_s3_bucket.my_bucket.bucket
	rule {
		apply_server_side_encryption_by_default {
		sse_algorithm = "AES256"
		}
	}
}
