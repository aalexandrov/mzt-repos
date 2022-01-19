SELECT DISTINCT
    R.x,
    R.y,
    R.z,
    R.y / R.z
FROM
    R
INNER JOIN 
    (VALUES (1)) AS S(x) ON R.x = S.x
