SET qgm_optimizations_experimental = true;
SELECT ( SELECT 1 FROM t1 ) FROM t2;
