## Environment

```sql
-- database
DROP DATABASE IF EXISTS simplify_outer_joins;
CREATE DATABASE simplify_outer_joins;
\c simplify_outer_joins;
-- schema
CREATE TABLE L(x INT, y INT);
CREATE TABLE R(y INT, z INT NOT NULL);
-- data
INSERT INTO L VALUES (0, null), (1, 2), (2, 3);
INSERT INTO R VALUES (null, 1), (1, 2), (2, 3);
```

## Queries & Plans

### Q1

- Input:
  - L FULL OUTER JOIN R
  - A predicate that rejects nulls in `sch(L)`
- Output:
  - L LEFT OUTER JOIN R

```sql
SELECT
    L.x, L.y, R.y, R.z
FROM
    L FULL OUTER JOIN R ON L.y = R.y
WHERE
    L.x > 0
```

### Q2

- Input:
  - L FULL OUTER JOIN R
  - A predicate that rejects nulls in `sch(R)`
- Output:
  - L RIGHT OUTER JOIN R

```sql
SELECT
    L.x, L.y, R.y, R.z
FROM
    L FULL OUTER JOIN R ON L.y = R.y
WHERE
    R.x > 0
```

### Q3

- Input:
  - L FULL OUTER JOIN R
  - A predicate that rejects nulls in `sch(L)`
  - A predicate that rejects nulls in `sch(R)`
- Output:
  - L INNER JOIN R

```sql
SELECT
    L.x, L.y, R.y, R.z
FROM
    L FULL OUTER JOIN R ON L.y = R.y
WHERE
    L.x > 0 and R.x > 0
```

### Q4

- Input:
  - L LEFT OUTER JOIN R
  - A predicate that rejects nulls in `sch(L)`
- Output:
  - L LEFT OUTER JOIN R

```sql
SELECT
    L.x, L.y, R.y, R.z
FROM
    L LEFT OUTER JOIN R ON L.y = R.y
WHERE
    L.x > 0
```

### Q5

- Input:
  - L LEFT OUTER JOIN R
  - A predicate that rejects nulls in `sch(R)`
- Output:
  - L INNER JOIN R

```sql
SELECT
    L.x, L.y, R.y, R.z
FROM
    L FULL OUTER JOIN R ON L.y = R.y
WHERE
    R.x > 0
```

### Q6

- Input:
  - L LEFT OUTER JOIN R
  - A predicate that rejects nulls in `sch(L)`
  - A predicate that rejects nulls in `sch(R)`
- Output:
  - L INNER JOIN R

```sql
SELECT
    L.x, L.y, R.y, R.z
FROM
    L FULL OUTER JOIN R ON L.y = R.y
WHERE
    L.x > 0 and R.x > 0
```
