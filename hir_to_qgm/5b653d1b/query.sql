SET qgm_optimizations_experimental = true;
SELECT
  *
FROM
  R LEFT OUTER JOIN LATERAL (VALUES (x * y, 'a'), (x * y, 'b')) AS S(u, v) 
ON x = u
