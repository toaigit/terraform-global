provider "aws" {
  region     = "us-west-2"
}

resource "aws_s3_bucket" "remotestate"
  {  bucket = "dummy.remotestate.net"
     region = "us-west-2"
     versioning {
          enabled = true
     }
     lifecycle {
          prevent_destroy = true
          }
  }
output "s3_bucket_arn" {
  value = "${aws_s3_bucket.remotestate.arn}"
  }
