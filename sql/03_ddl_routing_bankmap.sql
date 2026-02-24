CREATE TABLE `innov-jrfr-fizq-1`.`ach_bc50_raw`.`ach_routing_bankmap` AS
SELECT DISTINCT routing_number, bank_name
FROM (
  SELECT
    t.originator_routing_number AS routing_number,
    t.originator_bank AS bank_name
  FROM `innov-jrfr-fizq-1`.`ach_bc50_raw`.`ach_data_raw` AS t

  UNION ALL

  SELECT
    t.receiver_routing_number AS routing_number,
    t.receiver_bank AS bank_name
  FROM `innov-jrfr-fizq-1`.`ach_bc50_raw`.`ach_data_raw` AS t
);
