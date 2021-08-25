SELECT
  p.v2ProductName,
  COUNT(p.v2ProductName) AS cantidad_usos
FROM
  `bigquery-public-data.google_analytics_sample.ga_sessions_20170801`,
  UNNEST(hits) AS h,
  UNNEST(h.product) AS p
GROUP BY
  p.v2ProductName
ORDER BY
  cantidad_usos DESC