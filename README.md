# Credit Card Fraud Detection Analysis

## Project Overview
This project analyzes credit card transactions to detect fraud patterns using SQL, Python, and Excel. The goal is to explore transaction behavior, identify fraud trends, and segment transactions based on monetary value.

---

## Dataset
The dataset contains credit card transactions with PCA-transformed features (V1–V28), transaction time, transaction amount, and a binary fraud label (Class).

---

## Project Workflow

### 1. Data Storage (SQL)
- Created relational table for transactions
- Loaded dataset from CSV into PostgreSQL
- Created reference table for transaction amount segmentation

### 2. Data Preparation (SQL)
- Checked dataset size
- Identified missing values
- Detected duplicate records

### 3. Business Analysis (SQL)
- Calculated overall fraud rate
- Analyzed transaction distribution by class
- Computed average and median transaction amounts
- Performed segment-based fraud analysis
- Identified high-value transactions

### 4. Exploratory Data Analysis (Python)
- Data quality checks (missing values, duplicates)
- Exploratory data analysis (EDA)
- Outlier detection using IQR method
- Statistical tests:
  - Shapiro-Wilk normality test
  - Mann-Whitney U test
- Data visualization (fraud distribution, amount distribution)

### 5. Excel Analysis
- Pivot tables for fraud analysis by segment
- VLOOKUP used for data enrichment
- Charts for visual interpretation of fraud patterns

---

## Key Results

- Overall fraud rate: **0.1727%**
- Fraud is concentrated in higher transaction segments
- High and Very High segments show higher fraud rates (~0.29%)
- Low and Medium segments show lower fraud rates (~0.16%)
- Significant statistical difference observed between fraud and normal transactions

---

## Key Insights

- Fraud is rare but not randomly distributed
- Transaction amount is an important factor in fraud detection
- Segment-based analysis helps identify high-risk groups
- Statistical testing confirms differences between fraud and normal transactions

  ---
  
## Tools Used
  
- SQL (PostgreSQL)
- Python (Pandas, NumPy, SciPy, Matplotlib)
- Excel (Pivot Tables, VLOOKUP, Charts)
