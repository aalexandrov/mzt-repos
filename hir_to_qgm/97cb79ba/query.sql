SET qgm_optimizations_experimental = true;
SELECT
  *
FROM
  R
WHERE
  EXISTS(SELECT X.y, X.y + 1 FROM R as X WHERE X.x != 5) AND
  EXISTS(SELECT X.y, X.y + 1 FROM S as X WHERE X.x != 5);
