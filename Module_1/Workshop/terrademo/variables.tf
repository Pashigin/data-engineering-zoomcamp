variable "project" {
  description = "Project"
  default     = "dtc-de-course-485520"
}

variable "region" {
  description = "Region"
  #Update the below to your desired region
  default = "me-central1"
}

variable "location" {
  description = "Project Location"
  #Update the below to your desired location
  default = "me-central1"
}

variable "bq_dataset_name" {
  description = "My BigQuery Dataset Name"
  #Update the below to what you want your dataset to be called
  default = "demo_dataset"
}

variable "gcs_bucket_name" {
  description = "My Storage Bucket Name"
  #Update the below to a unique bucket name
  default = "dtc-de-course-485520-terra-bucket"
}

variable "gcs_storage_class" {
  description = "Bucket Storage Class"
  default     = "STANDARD"
}