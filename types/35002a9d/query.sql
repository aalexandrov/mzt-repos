SET qgm_optimizations_experimental = false;
SELECT f1 NOT IN ( SELECT f1 FROM t1 ) FROM t2;
