## Environment

```sql
-- database
CREATE DATABASE reduction_pushdown;
-- schema
CREATE TABLE R(x INT NOT NULL, y INT NOT NULL, z INT NOT NULL);
-- data
INSERT INTO R VALUES
    (1, 1, 1),
    (1, 2, 1),
    (1, 3, 1),
    (2, 4, 1),
    (2, 5, 1),
    (3, 6, 1),
    (3, 7, 0);
```

### Queries

```sql
SELECT DISTINCT
    R.x,
    R.y,
    R.z,
    R.y / R.z
FROM
    R
INNER JOIN 
    (VALUES (1),(2)) AS S(x) ON R.x = S.x
```

```sql
SELECT DISTINCT
    R.x,
    R.y,
    R.z,
    R.y / R.z
FROM
    R
INNER JOIN 
    (VALUES (1)) AS S(x) ON R.x = S.x
```