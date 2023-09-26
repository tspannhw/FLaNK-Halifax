CREATE TABLE default.halifaxalerts
(
  stopsequence string,
  arrivaltime string,
  stopid string,
  tripid string,
  tripstartdate string,
  departuretime string,
  ts string,
  uuid string,
  route_long_name string,
  stop_name string
)
PARTITIONED BY (triprouteid string) STORED BY ICEBERG;
