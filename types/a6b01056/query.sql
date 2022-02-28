SET qgm_optimizations_experimental = false;
SELECT ( SELECT 1 FROM t1 ) FROM t2;
