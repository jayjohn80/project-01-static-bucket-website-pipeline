terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "3.85.0"
    }
  }
  backend "gcs" {
    bucket  = "static-website-statebucket-02"
    prefix  = "terraform/state"
  }
}

provider "google" {
  project = "theta-style-416117"
  region = "us-east1"
  zone = "us-east1-a"
}




