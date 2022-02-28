SET qgm_optimizations_experimental = false;
SELECT
  *
FROM
  tpch.public.orders 
  FULL OUTER JOIN tpch.public.customer ON ( c_acctbal = o_totalprice )
WHERE
  c_acctbal + o_totalprice = 123 AND
  c_acctbal = o_totalprice
