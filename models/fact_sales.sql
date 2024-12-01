-- fact_sales
{{
  config(
    materialized='table'
  )
}}

SELECT  
  `Order ID` AS order_id, 
  Date AS date,
  Status AS status,
  {{ dbt_utils.generate_surrogate_key([
				'SKU'
			]) }} as product_id,
  {{ dbt_utils.generate_surrogate_key([
				'fulfilment', 
				'`fulfilled-by`'
			])}} AS fulfillment_id,
  {{ dbt_utils.generate_surrogate_key([
				'`promotion-ids`'
			]) }} as promotion_id,
  {{ dbt_utils.generate_surrogate_key([
				'`ship-service-level`',
        '`ship-city`',
        '`ship-state`',
        '`ship-postal-code`',
        '`ship-country`'
			]) }} as sales_ship_id,
  {{ dbt_utils.generate_surrogate_key([
				'`Sales Channel `'
			]) }} as sales_channel_id,
  sum(qty) AS qty,
  COALESCE(SUM(amount),0) AS amount,
FROM
    {{ source('bronze', 'amazon_sale_report') }}
GROUP BY ALL
