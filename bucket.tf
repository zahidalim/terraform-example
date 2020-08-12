# Specify the GCP Provider
provider "google" {
project = var.project_id
region  = var.region
}

data "google_iam_policy" "admin" {
  binding {
    role = "roles/storage.admin"
    members = [
      "user:cloud_user_p_91fb85f0@linuxacademygclabs.com",
    ]
  }
}

resource "google_storage_bucket_iam_policy" "policy" {
  bucket = google_storage_bucket.default.name
  policy_data = data.google_iam_policy.admin.policy_data
}

# Create a GCS Bucket
resource "google_storage_bucket" "my_bucket" {
name     = var.bucket_name
location = var.region
}
