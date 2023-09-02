# Write your MySQL query statement below

SELECT
t1.product_id,
CAST(t1.average_price/SUM(c.units) AS DECIMAL(10,2)) as average_price
FROM (
  SELECT
  a.product_id,
  SUM(b.units * a.price)  as average_price
  FROM Prices a
  LEFT JOIN UnitsSold b
  ON a.product_id = b.product_id
  AND b.purchase_date BETWEEN start_date and end_date
  GROUP BY 1
) as t1
left join UnitsSold c
ON t1.product_id = c.product_id
GROUP BY 1