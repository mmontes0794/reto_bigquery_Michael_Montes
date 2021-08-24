WITH
  repositories AS (
  SELECT
    t2.repo_name,
    t2.LANGUAGE
  FROM (
    SELECT
      repo_name,
      LANGUAGE,
      RANK() OVER (PARTITION BY t1.repo_name ORDER BY t1.language_bytes DESC) AS rank
    FROM (
      SELECT
        repo_name,
        arr.name AS LANGUAGE,
        arr.bytes AS language_bytes
      FROM
        `bigquery-public-data.github_repos.languages`,
        UNNEST(LANGUAGE) arr ) AS t1 ) AS t2
  WHERE
    rank = 1)
SELECT
  COUNT(1) AS RepoCount,
  LANGUAGE
FROM
  repositories
GROUP BY
  LANGUAGE
ORDER BY
  RepoCount DESC