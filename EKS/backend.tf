#terraform backend

terraform {
  backend "s3" {
    bucket = "pranjal-terrafom"
    key    = "jenkins/terraform.tfstate"
    region = "ap-southeast-1"
  }
}
