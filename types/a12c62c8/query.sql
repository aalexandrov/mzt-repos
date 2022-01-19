SELECT
    x,
    y
FROM
    U
WHERE
    coalesce(x, y) > 0
