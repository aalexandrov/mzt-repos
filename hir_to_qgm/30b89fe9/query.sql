SET qgm_optimizations_experimental = true;
SELECT
  *
FROM
  R
WHERE
  R.y >= ALL(SELECT X.y FROM R as X WHERE X.x = R.x) AND
  R.y >= ALL(SELECT X.y FROM S as X WHERE X.x = R.x);
