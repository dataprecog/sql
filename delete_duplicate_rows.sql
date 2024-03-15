--==============================================================================
-- Delete duplicate rows
--==============================================================================
-- Description.......: SQL Statements to delete duplicate rows in database tables
-- Author............: Data Precog
-- Email.............: info@dataprecog.com
-- Date..............: 2000.08.15
-- Version...........: 1.0

--==============================================================================
-- Delete rows with single-column duplicates
--==============================================================================
DELETE FROM table_a
WHERE id NOT IN (
  SELECT MAX(id) AS max_id
	FROM table_a
	GROUP BY col_1
);

--==============================================================================
-- Delete rows with multi-column duplicates
--==============================================================================
DELETE FROM table_a
WHERE id NOT IN (
	SELECT MAX(id) AS max_id
	FROM table_a
	GROUP BY col_1
		, col_2
		, col_n
);

--==============================================================================
-- EOF
--==============================================================================
