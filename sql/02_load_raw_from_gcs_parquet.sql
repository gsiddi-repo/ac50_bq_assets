-- BigQuery LOAD DATA statement to move the data from GCS landing bucket to raw zone. --INTO `innov-jrfr-fizq-1.ach_bc50_raw.ach_data_raw`
LOAD DATA INTO `innov-jrfr-fizq-1.ach_bc50_raw.ach_data_raw` 
FROM FILES (
  format = 'PARQUET',
  uris = ['gs://ach-demo-bucket/mock-data-2M/imp/ach_mock_data.parquet']
  );  
  
