SET qgm_optimizations_experimental = true;
SELECT
  *
FROM
  R INNER JOIN S USING(x)
