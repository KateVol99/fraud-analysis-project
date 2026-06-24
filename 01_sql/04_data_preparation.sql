--Table size
SELECT COUNT (*) AS total_rows
FROM transactions;

--Missing Values
SELECT
    COUNT (*) FILTER (WHERE "Amount" IS NULL) AS amount_missing,
	COUNT (*) FILTER (WHERE "Class" IS NULL) AS class_missing
FROM transactions;

--Duplicates
SELECT COUNT (*) - 
       COUNT(DISTINCT("Time", "Amount", "Class"))
	   AS duplicate_count
FROM transactions;

