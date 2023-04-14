provider "aws" {
  region = "us-east-1"
}

resource "aws_securityhub_account" "this" {}

resource "aws_securityhub_standards_subscription" "cis" {
  depends_on = [aws_securityhub_account.this]

  standards_arn = "arn:aws:securityhub:::ruleset/cis-aws-foundations-benchmark/v/1.4.0"
}
