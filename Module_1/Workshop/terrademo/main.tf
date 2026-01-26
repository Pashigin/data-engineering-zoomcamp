terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.6.0"
    }
  }
}

provider "google" {
  project = "dtc-de-course-485520"
  region  = "us-central1"
}

resource "google_storage_bucket" "data-lake-bucket" {
  name          = "dtc-de-course-485520-terra-bucket"
  location      = "US"
  force_destroy = true

  # Optional, but recommended settings:
  storage_class               = "STANDARD"
  uniform_bucket_level_access = true

  versioning {
    enabled = true
  }

  lifecycle_rule {
    action {
      type = "Delete"
    }
    condition {
      age = 30 // days
    }
  }
}