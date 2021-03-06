SET qgm_optimizations_experimental = true;
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
