# Define a Google Cloud Storage (GCS) bucket resource
resource "google_storage_bucket" "tech_innovators" {
  name                     = "tech_innovators"  # Set the name for the bucket
  storage_class            = "standard"  # Set the storage class for the bucket
  location                 = "us-central1"  # Define the location for the bucket
  labels = {
    "env" = "dev"  # Add environment label to the bucket
    "dep" = "tech"     # Add deployment label to the bucket
  }
  #uniform_bucket_level_access = true  # Enable uniform bucket-level access

  website {
    main_page_suffix = "index.html"
    not_found_page   = "404.html"
  }

  # Define lifecycle rules for the bucket (optional)
  # lifecycle_rule {
  #   condition {
  #     age = 5  # Set the age condition for the rule
  #   }
  #   action {
  #     type          = "SetStorageClass"  # Define action type as SetStorageClass
  #     storage_class = "STANDARD"          # Set the storage class for the action
  #   }
  # }

  # Define retention policy for the bucket (optional)
  # retention_policy {
  #   is_locked        = false    # Specify if retention policy is locked
  #   retention_period = 864000   # Set the retention period in seconds
  # }
}

# Define a Google Cloud Storage (GCS) bucket object for a picture
resource "google_storage_bucket_object" "background_404" {
  name   = "404_background.jpeg"                                    # Set the name of the object
  bucket = google_storage_bucket.tech_innovators.name                  # Specify the bucket name
  source = "${path.module}/404_background.jpeg" 
  content_type = "image/jpeg"                       # Define the relative source file path for the object
}


# Define a Google Cloud Storage (GCS) bucket object for a picture
resource "google_storage_bucket_object" "tech_background" {
  name   = "tech_background.mp4"                                    # Set the name of the object
  bucket = google_storage_bucket.tech_innovators.name                  # Specify the bucket name
  source = "${path.module}/tech_background.mp4" 
  content_type = "video/mp4"                       # Define the relative source file path for the object
}


# Define a Google Cloud Storage (GCS) bucket object for an HTML file
resource "google_storage_bucket_object" "index_html" {
  name   = "index1.html"                                    # Set the name of the object
  bucket = google_storage_bucket.tech_innovators.name                  # Specify the bucket name
  source = "${path.module}/index1.html"
  content_type = "text/html"               # Define the relative source file path for the object
}


resource "google_storage_default_object_access_control" "maglus_gcp_public_access" {
  bucket = google_storage_bucket.tech_innovators.name
  role   = "READER"
  entity = "allUsers"
 }




resource "google_storage_bucket_iam_binding" "public_access" {
  bucket = google_storage_bucket.tech_innovators.name
  role   = "roles/storage.objectViewer"

  members = [
    "allUsers",
  ]
}


# Output the self-link URL of the index HTML object
output "malgus_bucket_url" {
  value = "https://storage.googleapis.com/${google_storage_bucket.tech_innovators.name}/index1.html"
}

