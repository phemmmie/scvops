-- models/staging/user_history.sql

WITH raw_customerprofile AS (
  SELECT
    first_name,
    last_name,
    optin,
    last_order_date,
    is_customer,
    favourited_brand_names
  FROM raw.iterable.user_history
)

-- Transform and clean raw data
SELECT
  first_name,
  last_name,
  optin,
  last_order_date,
  is_customer,
  favourited_brand_names
FROM raw_customerprofile
