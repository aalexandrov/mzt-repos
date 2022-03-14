SET qgm_optimizations_experimental = true;
SELECT
  *
FROM
  R,
  LATERAL (VALUES (x * y, 'a'), (x * y, 'b')) AS S(u, v) 
WHERE
  x = u
