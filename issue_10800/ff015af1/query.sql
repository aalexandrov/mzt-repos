SET qgm_optimizations_experimental = true;
SELECT
  COUNT(*)
FROM
  t1
GROUP BY
  f2
