SET qgm_optimizations_experimental = false;
SELECT
  *
FROM
  table_f1_f2_f3
  LEFT JOIN (table_f3_f4_f5 RIGHT JOIN table_f5_f6 USING (f5)) USING (f3)
WHERE
  TRUE AND
  f5 = 0
