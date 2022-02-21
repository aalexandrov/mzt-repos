SELECT 
  s.name
FROM
  students s
WHERE
  EXISTS (
    SELECT
      t.grade
    FROM
      test t
    WHERE
      s.studnr = t.studnr
  )
