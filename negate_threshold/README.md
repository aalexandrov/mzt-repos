## Appendix A: Schema

```sql
DROP DATABASE IF EXISTS negate_threshold;
CREATE DATABASE negate_threshold;
\c negate_threshold;
CREATE TABLE R (x BIGINT, y INTEGER);
CREATE TABLE S (x BIGINT, y INTEGER);
INSERT INTO R VALUES (0, 0), (1, 1), (2, 2);
INSERT INTO S VALUES (1, 1), (2, 2), (3, 3);
```

## Appendix B: Queries
