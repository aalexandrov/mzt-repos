SELECT 
  s.name,
  t.lecturenr
FROM
  students s,
  test t
WHERE
  s.studnr = t.studnr AND
  t.grade = (
    SELECT
      min(t2.grade)
    FROM
      test t2
    WHERE
      s.studnr = t2.studnr
  )
