SET qgm_optimizations_experimental = false;
SELECT
  *
FROM
  tpch.public.orders, 
  tpch.public.customer
WHERE
  c_acctbal + o_totalprice = 123 AND
  c_acctbal = o_totalprice
