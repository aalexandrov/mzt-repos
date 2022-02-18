SELECT
  'qgm(true)' as qgm, *
FROM
  table_f4_f5
  RIGHT JOIN table_f5_f6 USING (f5)
WHERE
  TRUE AND
  f5 = f4
