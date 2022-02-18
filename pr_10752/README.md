## Queries

### v0.19.0

```sql
SELECT 'v0.10.0', *
FROM z, LATERAL(SELECT * FROM x INNER JOIN y ON x.a = y.a);
```

<img alt="optimized-plan" src="207cb104/decorrelated-plan.svg" width="600" />

### PR Branch

```sql
SELECT 'pr_10752', *
FROM z, LATERAL(SELECT * FROM x INNER JOIN y ON x.a = y.a);
```

<img alt="optimized-plan" src="38c1b9d9/decorrelated-plan.svg" width="600" />

## Appendix: DB Schema

```sql
-- database
CREATE DATABASE pr_10752;
-- schema
CREATE TABLE x (a int);
CREATE TABLE y (a int);
CREATE TABLE z (a int);
-- data
INSERT INTO x VALUES (1), (2), (3);
INSERT INTO y VALUES (2), (3), (4);
INSERT INTO y VALUES (0);
```