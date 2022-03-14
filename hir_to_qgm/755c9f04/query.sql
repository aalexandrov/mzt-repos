SET qgm_optimizations_experimental = true;
SELECT
  *
FROM
  R, S
WHERE
  R.x = S.x
