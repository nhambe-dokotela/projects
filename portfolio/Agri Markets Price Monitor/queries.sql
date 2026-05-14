Query 1: Average price per commodity

SELECT
  cm_name,
  ROUND(AVG(mp_price), 2) AS avg_price_usd,
  COUNT(*) AS num_records
FROM "Project5 dataset"
WHERE mp_price IS NOT NULL
GROUP BY cm_name
ORDER BY avg_price_usd DESC
LIMIT 15;

Query 2:  Most expensive market per country

SELECT
  adm0_name,
  mkt_name,
  ROUND(MAX(mp_price), 2) AS max_price_usd,
  cm_name
FROM "Project5 dataset"
WHERE mp_price IS NOT NULL
GROUP BY adm0_name, mkt_name, cm_name
ORDER BY max_price_usd DESC
LIMIT 20;

Query 3: Price trend over time (maize)

SELECT
  mp_year,
  mp_month,
  ROUND(AVG(mp_price), 3) AS avg_price_usd
FROM "Project5 dataset"
WHERE
  cm_name LIKE '%Maize%'
  AND mp_price IS NOT NULL
GROUP BY mp_year, mp_month
ORDER BY mp_year ASC, mp_month ASC;

Query 4: Top 10 countries by average food price

SELECT
  adm0_name,
  ROUND(AVG(mp_price), 2) AS avg_price_usd,
  COUNT(DISTINCT cm_name) AS commodities_tracked
FROM "Project5 dataset"
WHERE mp_price IS NOT NULL
GROUP BY adm0_name
ORDER BY avg_price_usd DESC
LIMIT 10;

Query 5:  Price comparison: pre vs post 2020

SELECT
  adm0_name,
  CASE WHEN mp_year < 2020 THEN 'Pre-2020' ELSE '2020 onwards' END AS period,
  ROUND(AVG(mp_price), 2) AS avg_price_usd
FROM "Project5 dataset"
WHERE mp_price IS NOT NULL
GROUP BY adm0_name, period
ORDER BY adm0_name, period;
