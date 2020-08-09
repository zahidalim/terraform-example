terraform {
backend "gcs" {
   bucket = "my-tfstate-bucket"      # GCS bucket name to store terraform tfstate
   prefix = "commerce-"
   }
}
