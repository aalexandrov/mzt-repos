SELECT
  L.x, L.y, R.y, R.z
FROM
  L FULL OUTER JOIN R ON L.y = R.y
