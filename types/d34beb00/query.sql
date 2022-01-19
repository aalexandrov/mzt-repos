SELECT
    x,
    y,
    x + y,
    x - y,
    coalesce(x + y, x - y, x)
FROM
    U
WHERE
    x > 0
