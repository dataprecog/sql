--==============================================================================
-- Inner Join
--==============================================================================
-- Description.......: Inner Join
-- Author............: Data Precog
-- Email.............: info@dataprecog.com
-- Date..............: 2000.08.15
-- Version...........: 1.0

--==============================================================================
-- Inner Join
--==============================================================================
SELECT a.*
	, b.*
FROM table_a a
INNER JOIN table_b b
	ON a.column_a = b.column_b;

--==============================================================================
-- EOF
--==============================================================================
