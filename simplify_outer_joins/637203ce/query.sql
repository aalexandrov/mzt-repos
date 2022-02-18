SELECT
  'qgm(false)' as qgm, *
FROM
  orders, 
  customer
WHERE
  c_acctbal + o_totalprice = 123 AND
  c_acctbal = o_totalprice
