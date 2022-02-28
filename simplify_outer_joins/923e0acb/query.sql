SET qgm_optimizations_experimental = true;
SELECT
  *
FROM
  t1 a1
  LEFT JOIN t1 a2 ON TRUE AND a1.f1 = a2.f1
  LEFT JOIN t2 ON TRUE
WHERE
  a1.f1 = a2.f1 AND
  a2.f2 = a1.f1 AND
  a2.f1 = a1.f2 AND
  a2.f1 < a1.f2 AND
  a2.f2 = 5
