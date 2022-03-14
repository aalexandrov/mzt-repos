SET qgm_optimizations_experimental = true;
SELECT
  *
FROM
  R
WHERE
  NOT EXISTS(SELECT X.y FROM R as X WHERE X.x = R.x) AND
  NOT EXISTS(SELECT X.y FROM S as X WHERE X.x = R.x);
