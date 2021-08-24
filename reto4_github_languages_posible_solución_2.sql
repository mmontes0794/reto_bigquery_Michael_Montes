SELECT
  nombre.name,
  COUNT(*) AS reposCount
FROM
  `bigquery-public-data.github_repos.languages`,
  UNNEST(LANGUAGE) AS nombre
GROUP BY
  nombre.name
ORDER BY
  reposCount DESC