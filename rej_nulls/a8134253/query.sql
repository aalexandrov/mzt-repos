SELECT
    R.x, R.y, S.y, S.z, T.x, T.y
FROM
    R 
    FULL OUTER JOIN S ON R.y = S.y 
    RIGHT OUTER JOIN T ON S.y = T.y
WHERE
    R.x > 0
