SELECT
    R.x, R.y, coalesce(S.z, 0)
FROM
    R LEFT JOIN S ON (R.y = S.y)
