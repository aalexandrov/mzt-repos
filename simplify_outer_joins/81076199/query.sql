SELECT
    L.x, L.y, R.y, R.z
FROM
    L INNER JOIN R ON L.y = R.y
WHERE
    L.x < R.z
