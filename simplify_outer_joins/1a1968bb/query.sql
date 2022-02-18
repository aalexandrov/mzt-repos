SELECT
  'qgm(false)' as qgm, *
FROM
  orders 
  FULL OUTER JOIN customer ON ( c_acctbal = o_totalprice )
WHERE
  c_acctbal + o_totalprice = 123 AND
  c_acctbal = o_totalprice
