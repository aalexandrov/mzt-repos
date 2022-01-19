SELECT
    x,
    y,
    x + y,
    x - y,
    coalesce(x + y, x - y, x)
FROM
    T
WHERE
    x > 0
