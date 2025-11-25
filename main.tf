locals {
  bucket_names = [for i in range(1, var.bucket_count + 1) : "${var.student_id}-bucket${i}"]
}


resource "aws_s3_bucket" "student_buckets" {
  for_each = toset(local.bucket_names)
  bucket   = each.key
}


resource "aws_s3_object" "upload_file" {
  for_each = aws_s3_bucket.student_buckets


  bucket = each.key
  key    = "Jay-9062044.txt"
  source = "files/Jay-9062044.txt"
  etag   = filemd5("files/Jay-9062044.txt")
}