-- models/staging/orders_gmv.sql

WITH gmv_raw_data AS (
  SELECT
    order_id,
    gmv
  FROM production.modelled.model_orders_gmv
)

-- Transform and clean raw data
SELECT
  order_id,
  gmv
FROM gmv_raw_data
