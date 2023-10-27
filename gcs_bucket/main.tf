terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  credentials = file("key.json")
  project     = "terraform-402906"
  region      = "us-central1"
  zone        = "us-central1-c"
}

resource "google_storage_bucket" "tfe_bucket" {
  name          = "state-bucket2710"
  location      = "US"
  force_destroy = true
}
