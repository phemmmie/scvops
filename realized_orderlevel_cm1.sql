-- models/staging/realized_orderlevel_cm1.sql

WITH cm1raw_data AS (
  SELECT
    orderid,
    cm1
  FROM production.modelled.model_realized_orderlevel_cm1
)

-- Transform and clean raw data
SELECT
  orderid,
  cm1
FROM cm1raw_data
