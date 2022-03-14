SET qgm_optimizations_experimental = true;
SELECT
  *
FROM
  (SELECT * FROM R)
  UNION
  (SELECT * FROM S)
