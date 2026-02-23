resource "google_bigquery_dataset" "ach_bc50_raw"{
	dataset_id = "ach_bcgb50_raw"
	location = "US"
}
resource "google_bigquery_dataset" "ach_bc50_cleansed"{
	dataset_id = "ach_bcgb50_cleansed"
	location = "US"
}
resource "google_bigquery_dataset" "ach_bc50_curated"{
	dataset_id = "ach_bcgb50_curated"
	location = "US"
}