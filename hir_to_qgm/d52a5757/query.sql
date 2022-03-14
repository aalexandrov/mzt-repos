SET qgm_optimizations_experimental = true;
SELECT
  *
FROM
  (SELECT * FROM R)
  INTERSECT
  (SELECT * FROM S)
