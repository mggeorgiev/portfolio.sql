USE portfolio;
GO

-- Create a new table called '[Sudoku]' in schema '[dbo]'
-- Drop the table if it already exists
IF OBJECT_ID('[dbo].[Sudoku]', 'U') IS NOT NULL
DROP TABLE [dbo].[Sudoku]
GO
-- Create the table in the specified schema
CREATE TABLE [dbo].[Sudoku]
(
    row INT,
    col INT,
    value INT,
    PRIMARY KEY (row, col)
    -- Specify more columns here
);
GO

INSERT INTO Sudoku (row, col, value) VALUES
(1, 9, 3),
(2, 8, 1), (2, 9, 8),
(3, 7, 9), (3, 8, 5), (3, 9, 2),
(4, 6, 5), (4, 7, 3), (4, 8, 7), (4, 9, 1),
(5, 5, 1), (5, 6, 3), (5, 7, 2), (5, 8, 9), (5, 9, 4),
(6, 4, 4), (6, 5, 2), (6, 6, 9), (6, 7, 5), (6, 8, 8), (6, 9, 6),
(7, 3, 6), (7, 4, 5), (7, 5, 4), (7, 6, 7), (7, 7, 1), (7, 8, 3), (7, 9, 9),
(8, 2, 1), (8, 3, 7), (8, 4, 2), (8, 5, 9), (8, 6, 8), (8, 7, 6), (8, 8, 4), (8, 9, 5),
(9, 1, 9), (9, 2, 5), (9, 3, 4), (9, 4, 3), (9, 5, 6), (9, 6, 1), (9, 7, 8), (9, 8, 2), (9, 9, 7);
GO