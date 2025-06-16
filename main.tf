terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "6.39.0"
    }
  }
}

provider "google" {
  credentials = file(var.credentialfile)
  project     = var.projectid
  region      = var.region
  zone        = var.zone
}




