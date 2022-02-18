SELECT
  L.x, L.y, R.y, R.z, T.a
FROM
  L LEFT OUTER JOIN R ON L.y = R.y
