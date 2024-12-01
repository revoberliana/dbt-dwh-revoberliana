-- dim_fulfillment
{{
  config(
    materialized='table'
  )
}}

With t_data AS (
SELECT DISTINCT 
  Fulfilment AS fulfilment, 
  `fulfilled-by` AS fulfilled_by
FROM
    {{ source('bronze', 'amazon_sale_report') }}
)

SELECT 
{{ dbt_utils.generate_surrogate_key([
				'fulfilment', 
				'fulfilled_by'
			])}} AS fulfillment_id, *
FROM t_data
