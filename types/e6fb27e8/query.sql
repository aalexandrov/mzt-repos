SET qgm_optimizations_experimental = false;
SELECT EXISTS( SELECT f2 FROM t1 WHERE f1 = 42 ) FROM t2;
