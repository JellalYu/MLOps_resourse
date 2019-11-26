CREATE DATABASE IF NOT EXISTS csvdb;

CREATE EXTERNAL TABLE IF NOT EXISTS `kfcorder`(
  `seq` string COMMENT 'from deserializer', 
  `order_date` string COMMENT 'from deserializer', 
  `shopcode` string COMMENT 'from deserializer', 
  `channel` string COMMENT 'from deserializer', 
  `channel_order_no` string COMMENT 'from deserializer', 
  `channel_device_id` string COMMENT 'from deserializer', 
  `order_type` string COMMENT 'from deserializer', 
  `order_data` string COMMENT 'from deserializer', 
  `payment_method` string COMMENT 'from deserializer', 
  `payment_result` string COMMENT 'from deserializer', 
  `pos_bill_no` string COMMENT 'from deserializer', 
  `pos_result` string COMMENT 'from deserializer', 
  `member_id` string COMMENT 'from deserializer', 
  `member_data` string COMMENT 'from deserializer', 
  `order_status` string COMMENT 'from deserializer', 
  `order_tel` string COMMENT 'from deserializer', 
  `etc` string COMMENT 'from deserializer', 
  `pos_request` string COMMENT 'from deserializer')
ROW FORMAT SERDE 
  'org.apache.hadoop.hive.serde2.OpenCSVSerde' 
WITH SERDEPROPERTIES ( 
  'escapeChar'='\\', 
  'quoteChar'='\"', 
  'separatorChar'=',') 
STORED AS INPUTFORMAT 
  'org.apache.hadoop.mapred.TextInputFormat' 
OUTPUTFORMAT 
  'org.apache.hadoop.hive.ql.io.HiveIgnoreKeyTextOutputFormat'
LOCATION
  's3://jrg-poc/'
TBLPROPERTIES (
  'has_encrypted_data'='true', 
  'transient_lastDdlTime'='1567656258')