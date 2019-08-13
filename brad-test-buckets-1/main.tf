terraform {
  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "bradwise"

    workspaces {
      name = "brad-test-buckets-1"
    }
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "brad-test-buckets-1" {
  bucket = "brad-test-buckets-1"
  region = "us-east-1"
}
