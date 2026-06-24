-- Fraud rate
SELECT
    ROUND (100.0 * SUM ("Class")::numeric / COUNT (*),
	      4
    ) AS fraud_rate
FROM transactions;

-- Transaction Count by Class
SELECT "Class",
       COUNT (*) AS transaction_count
FROM transactions
GROUP BY "Class";

-- Average Transaction Amount
SELECT "Class",
    ROUND(AVG("Amount")::numeric, 2) AS avg_amount
FROM transactions
GROUP BY "Class";

-- Median Transaction Amount
SELECT "Class",
    PERCENTILE_CONT(0.5)
	    WITHIN GROUP (ORDER BY "Amount") AS median_amount
FROM transactions
GROUP BY "Class";

-- Fraud Rate by Amount Segment
SELECT a_s.segment_name,
    COUNT (*) AS total_transactions,
	SUM (t."Class") AS fraud_count
FROM transactions AS t
JOIN amount_segments AS a_s
    ON t."Amount" >= a_s.min_amount
   AND t."Amount" < a_s.max_amount
GROUP BY a_s.segment_name;

-- Average Transaction Amount by Segment
SELECT
    a_s.segment_name,
    ROUND(AVG(t."Amount")::numeric,2) AS avg_amount
FROM transactions AS t
JOIN amount_segments AS a_s
    ON t."Amount" >= a_s.min_amount
   AND t."Amount" < a_s.max_amount
GROUP BY a_s.segment_name;

-- Transactions Above Average Amount
SELECT *
FROM transactions
WHERE "Amount" >
(
    SELECT AVG("Amount")
    FROM transactions
);

-- Top 20 Highest-Value Transactions
SELECT *
FROM transactions
ORDER BY "Amount" DESC
LIMIT 20;