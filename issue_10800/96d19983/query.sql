SET qgm_optimizations_experimental = false;
SELECT
  COUNT(*)
FROM
  t1
GROUP BY
  f2
