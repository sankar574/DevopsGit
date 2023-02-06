terraform {
  backend "s3" {
    bucket = "stehankarterraformbucket"
    key    = "myterraform.tfstate"
    region = "us-east-1"
  }
}