terraform {
  backend "s3" {
    bucket = "dummy.remotestate.net"
    key    = "global.tfstate"
    region = "us-west-2"
  }
}
