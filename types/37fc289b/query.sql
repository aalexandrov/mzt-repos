SELECT
    x,
    y,
    x + y,
    x - y,
    coalesce(x + y, x - y, y)
FROM
    U
