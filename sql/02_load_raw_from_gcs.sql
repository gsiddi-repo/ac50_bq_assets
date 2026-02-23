-- BigQuery LOAD DATA statement to move the data from GCS landing bucket to raw zone.
LOAD DATA INTO `innov-jrfr-fizq-1.ach_bc50_raw.ach_data_raw`
FROM FILES (
  format = 'CSV',
  uris = ['gs://ach-demo-bucket/ach-mock-data2.csv'],
  skip_leading_rows = 1
);       