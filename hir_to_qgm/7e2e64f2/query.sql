SET qgm_optimizations_experimental = true;
SELECT
  *
FROM
  R INNER JOIN S ON R.x = S.x
