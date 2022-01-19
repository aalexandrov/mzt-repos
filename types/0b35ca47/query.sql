SELECT
    x,
    y
FROM
    T
WHERE
    coalesce(x, y) > 0
