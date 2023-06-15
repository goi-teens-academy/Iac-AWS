provider "aws" {
  region = "us-west-1"  # Замініть на відповідну регіональну зону AWS
}

resource "aws_s3_bucket" "goiteens-bucket" {
  bucket = "lms.goiteens.files"  # Замініть на ім'я вашого бакету

  # Налаштування доступу до бакету
  acl = "private"

  # Налаштування версіювання
  versioning {
    enabled = true
  }

  # Налаштування шифрування
  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        sse_algorithm = "AES256"
      }
    }
  }
}
