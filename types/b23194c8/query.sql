SET qgm_optimizations_experimental = true;
SELECT
    x,
    y
FROM
    U
WHERE
    coalesce(x, y) > 0
