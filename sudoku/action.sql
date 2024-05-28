USE portfolio;
GO

SELECT
    row,
    MAX(CASE WHEN col = 1 THEN value END) AS column1,
    MAX(CASE WHEN col = 2 THEN value END) AS column2,
    MAX(CASE WHEN col = 3 THEN value END) AS column3,
    MAX(CASE WHEN col = 4 THEN value END) AS column4,
    MAX(CASE WHEN col = 5 THEN value END) AS column5,
    MAX(CASE WHEN col = 6 THEN value END) AS column6,
    MAX(CASE WHEN col = 7 THEN value END) AS column7,
    MAX(CASE WHEN col = 8 THEN value END) AS column8,
    MAX(CASE WHEN col = 9 THEN value END) AS column9
FROM Sudoku
GROUP BY row
ORDER BY row;
GO

-- The number of all filled cells. Total bumber is 9 * 9 = 81
SELECT    COUNT(*)*100/81 AS percent_complete
FROM      sudoku;
GO

SELECT    VALUE,
          COUNT(*) AS cnt,
          COUNT(*)*100 / 9 as percent_complete
FROM      sudoku
GROUP BY  VALUE
ORDER BY  VALUE
GO

-- Row 8 has only one missing value

SELECT    VALUE
FROM      (
          VALUES    (1),
                    (2),
                    (3),
                    (4),
                    (5),
                    (6),
                    (7),
                    (8),
                    (9)
          ) AS PossibleValues (VALUE)
WHERE     VALUE NOT IN (
          SELECT    VALUE
          FROM      Sudoku
          WHERE     ROW = 8
          );
GO

-- Column 8 has only one missing value
SELECT    VALUE
FROM      (
          VALUES    (1),
                    (2),
                    (3),
                    (4),
                    (5),
                    (6),
                    (7),
                    (8),
                    (9)
          ) AS PossibleValues (VALUE)
WHERE     VALUE NOT IN (
          SELECT    VALUE
          FROM      Sudoku
          WHERE     col = 8
          );
GO

-- insert the only possible solution to two fields
INSERT INTO sudoku (row, col, value) VALUES
(8, 1, 3), (1, 8, 6);
GO

-- The number of all filled cells. Total bumber is 9 * 9 = 81
SELECT    COUNT(*)*100/81 AS percent_complete
FROM      sudoku;
GO

SELECT    VALUE,
          COUNT(*) AS cnt,
          COUNT(*)*100 / 9 as percent_complete
FROM      sudoku
GROUP BY  VALUE
ORDER BY  VALUE;
GO

-- New solution
SELECT
    row,
    MAX(CASE WHEN col = 1 THEN value END) AS column1,
    MAX(CASE WHEN col = 2 THEN value END) AS column2,
    MAX(CASE WHEN col = 3 THEN value END) AS column3,
    MAX(CASE WHEN col = 4 THEN value END) AS column4,
    MAX(CASE WHEN col = 5 THEN value END) AS column5,
    MAX(CASE WHEN col = 6 THEN value END) AS column6,
    MAX(CASE WHEN col = 7 THEN value END) AS column7,
    MAX(CASE WHEN col = 8 THEN value END) AS column8,
    MAX(CASE WHEN col = 9 THEN value END) AS column9
FROM sudoku
GROUP BY row
ORDER BY row;
GO

-- New percentages
SELECT    COUNT(*)*100/81 AS percent_complete
FROM      sudoku;

SELECT    VALUE,
          COUNT(*) AS cnt,
          COUNT(*)*100 / 9 as percent_complete
FROM      sudoku
GROUP BY  VALUE
ORDER BY  VALUE;
GO

     -- All combinations

    SELECT s.row, s.col, n.value
    FROM sudoku s
    CROSS JOIN (VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9)) n(value)
    WHERE s.value IS NULL
      AND NOT EXISTS (
          -- Check if the value is already in the same row
          SELECT 1
          FROM sudoku fs
          WHERE fs.row = s.row AND fs.value = n.value
      )
      AND NOT EXISTS (
          -- Check if the value is already in the same column
          SELECT 1
          FROM sudoku fs
          WHERE fs.col = s.col AND fs.value = n.value
      )
      AND NOT EXISTS (
          -- Check if the value is already in the same 3x3 block
          SELECT 1
          FROM sudoku fs
          WHERE (fs.row - 1) / 3 = (s.row - 1) / 3
            AND (fs.col - 1) / 3 = (s.col - 1) / 3
            AND fs.value = n.value
      );
GO

-- This is the only possible value according to the query - line 91

UPDATE sudoku
SET
  value = 8
WHERE row = 4
  AND col = 5;

-- Try my luck - lines 25, 26, 103,

UPDATE sudoku
SET
  value = 4
WHERE row = 1
  AND col = 7;

UPDATE sudoku
SET
  value = 7
WHERE row = 2
  AND col = 7;

UPDATE sudoku
SET
  value = 2
WHERE row = 7
  AND col = 1;

UPDATE sudoku
SET
  value = 8
WHERE row = 7
  AND col = 2;

UPDATE sudoku
SET
  value = 1
WHERE row = 6
  AND col = 1;

UPDATE sudoku
SET
  value = 7
WHERE row = 6
  AND col = 2;

UPDATE sudoku
SET
  value = 3
WHERE row = 6
  AND col = 3;

UPDATE sudoku
SET
  value = 2
WHERE row = 1
  AND col = 6;

UPDATE sudoku
SET
  value = 4
WHERE row = 2
  AND col = 6;

UPDATE sudoku
SET
  value = 6
WHERE row = 3
  AND col = 6;

UPDATE sudoku
SET
  value = 7
WHERE row = 1
  AND col = 5;

UPDATE sudoku
SET
  value = 5
WHERE row = 2
  AND col = 5;

UPDATE sudoku
SET
  value = 3
WHERE row = 3
  AND col = 5;

UPDATE sudoku
SET
  value = 8
WHERE row = 5
  AND col = 1;

UPDATE sudoku
SET
  value = 5
WHERE row = 5
  AND col = 3;

UPDATE sudoku
SET
  value = 6
WHERE row = 5
  AND col = 2;

UPDATE sudoku
SET
  value = 7
WHERE row = 5
  AND col = 4;

UPDATE sudoku
SET
  value = 5
WHERE row = 1
  AND col = 1;

UPDATE sudoku
SET
  value = 9
WHERE row = 1
  AND col = 2;

UPDATE sudoku
SET
  value = 1
WHERE row = 1
  AND col = 3;

UPDATE sudoku
SET
  value = 8
WHERE row = 1
  AND col = 4;

UPDATE sudoku
SET
  value = 1
WHERE row = 3
  AND col = 4;

UPDATE sudoku
SET
  value = 6
WHERE row = 2
  AND col = 1;

UPDATE sudoku
SET
  value = 3
WHERE row = 2
  AND col = 2;

UPDATE sudoku
SET
  value = 9
WHERE row = 2
  AND col = 4;

UPDATE sudoku
SET
  value = 2
WHERE row = 2
  AND col = 3;

UPDATE sudoku
SET
  value = 6
WHERE row = 4
  AND col = 4;

UPDATE sudoku
SET
  value = 7
WHERE row = 3
  AND col = 1;

UPDATE sudoku
SET
  value = 4
WHERE row = 3
  AND col = 2;

UPDATE sudoku
SET
  value = 8
WHERE row = 3
  AND col = 3;

UPDATE sudoku
SET
  value = null
WHERE row = 4
  AND col = 3;

UPDATE sudoku
SET
  value = 4
WHERE row = 4
  AND col = 1;

UPDATE sudoku
SET
  value = 9
WHERE row = 4
  AND col = 3;

UPDATE sudoku
SET
  value = 2
WHERE row = 4
  AND col = 2;



-- New solution
SELECT
    row,
    MAX(CASE WHEN col = 1 THEN value END) AS column1,
    MAX(CASE WHEN col = 2 THEN value END) AS column2,
    MAX(CASE WHEN col = 3 THEN value END) AS column3,
    MAX(CASE WHEN col = 4 THEN value END) AS column4,
    MAX(CASE WHEN col = 5 THEN value END) AS column5,
    MAX(CASE WHEN col = 6 THEN value END) AS column6,
    MAX(CASE WHEN col = 7 THEN value END) AS column7,
    MAX(CASE WHEN col = 8 THEN value END) AS column8,
    MAX(CASE WHEN col = 9 THEN value END) AS column9
FROM sudoku
GROUP BY row
ORDER BY row;

-- All combinations

SELECT s.row, s.col, n.value
FROM sudoku s
CROSS JOIN (VALUES (1), (2), (3), (4), (5), (6), (7), (8), (9)) n(value)
WHERE s.value IS NULL
    AND NOT EXISTS (
        -- Check if the value is already in the same row
        SELECT 1
        FROM sudoku fs
        WHERE fs.row = s.row AND fs.value = n.value
    )
    AND NOT EXISTS (
        -- Check if the value is already in the same column
        SELECT 1
        FROM sudoku fs
        WHERE fs.col = s.col AND fs.value = n.value
    )
    AND NOT EXISTS (
        -- Check if the value is already in the same 3x3 block
        SELECT 1
        FROM sudoku fs
        WHERE (fs.row - 1) / 3 = (s.row - 1) / 3
          AND (fs.col - 1) / 3 = (s.col - 1) / 3
          AND fs.value = n.value
    );