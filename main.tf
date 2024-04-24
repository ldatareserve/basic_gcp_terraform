terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = "optimum-airfoil-416401"
  region = "us-central1"
  zone = "us-central1-a"
  credentials = "optimum-airfoil-416401-bd7e2007d158.json"
}

resource "google_compute_network" "vpc_network" {
  name = "terraform-network"
}

resource "google_storage_bucket" "something-new" {
  name          = "demo-saturday"
  location      = "us-central1"
  force_destroy = true

  uniform_bucket_level_access = true

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }
  
}