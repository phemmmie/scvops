-- models/staging/member_preference.sql

WITH Prefraw_data AS (
  SELECT
    ot_member_id,
    gender,
    locale,
    email
  FROM raw.prod_user_preference.member_preference
)

-- Transform and clean raw data
SELECT
  ot_member_id,
  gender,
  locale,
  email
FROM Prefraw_data
