provider "google" {
  credentials = file("feki-GCP-key-admin.json")

  project = "feki-368302"
  region  = "us-central1"
}