resource "aws_s3_bucket" "bucket" {
  bucket = "${var.prefix}-browser-client-build-artifact"

  lifecycle {
    create_before_destroy = true
  }
}

