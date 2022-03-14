SET qgm_optimizations_experimental = true;
SELECT
  *
FROM
  (VALUES (1 + 0, 2 + 0), (3 + 0, 4 + 0)) AS R(a,b)
