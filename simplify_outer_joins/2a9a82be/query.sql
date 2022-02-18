SELECT
    'qgm(true)' as qgm, L.x, L.y, R.y, R.z, T.a
FROM
    L FULL OUTER JOIN R ON L.y = R.y
      LEFT OUTER JOIN T ON L.y = T.a
WHERE
    L.x > R.z
