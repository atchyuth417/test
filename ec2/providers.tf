provider "aws" {
  region                  = "us-east-1" # N. Virginia region
  shared_credentials_files = ["/home/atchyuth417/.aws/credentials"]
  profile                 = "default"
}
