SET qgm_optimizations_experimental = true;
SELECT
  *
FROM
  (SELECT * FROM R)
  EXCEPT ALL
  (SELECT * FROM S)
