SET qgm_optimizations_experimental = true;
SELECT
    x,
    y
FROM
    T
WHERE
    coalesce(x, y) > 0
