provider "google" {
  project = "data-engineering-496703"
  region  = "us-central1"
}

resource "google_storage_bucket" "storage_bucket" {
  name          = "data-engineering-496703-bucket"
  location      = "US"
  force_destroy = true


  lifecycle_rule {
    condition {
      age = 1
    }
    action {
      type = "AbortIncompleteMultipartUpload"
    }
  }
}