terraform {
  backend "gcs" {
    credentials = "key.json"
    bucket      = "state-bucket2710"
    prefix      = "dev/state"
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.78.0"
    }
  }
}
provider "google" {
  credentials = file("key.json")
  project     = "terraform-402906"
  region      = "us-central1"
  zone        = "us-central1-c"
}



