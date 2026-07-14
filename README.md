# bank-loan-customer-analytics-sq
# Bank Loan & Customer Analytics — SQL Project
SQL project analyzing a synthetic banking dataset (customers, accounts, loans, transactions) sourced from Kaggle. Includes data cleaning and analysis of loan exposure, loan status, and top customers by balance.

## Dataset
Synthetic finance dataset from Kaggle (50k+ rows, multiple related tables). Includes intentional data quality issues such as nulls, duplicates, inconsistent formats for cleaning practice.

## What I Did
- Built connected tables and loaded the data
- Cleaned nulls, duplicates, and formatting inconsistencies
- Analyzed:
  - Total loan exposure by customer type
  - Loan counts by status (active, overdue, paid off)
  - Top 10 customers by account balance

## Key Findings
- Loan exposure by customer type: Large enterprises had the highest with a total of $6,478,000.19, taking up 37.57% of the total loan amount. Individual customers was close to large enterprises with a total of $6,258,494.43 (36.3%), followed by small businesses at $5,037,907.25 (29.22%).
- Loan status breakdown: Among the synthetic data branches, branch 20 had the most active loans and total loans (5), branch 13 had 2 active and total loans, while 6 other branches had only 1 total loan.
- Top 10 customers by balance: Among the top 10 customers by balance, youth (3) and savings accounts (3) had were the majority, followed by checking (2) and business accounts (2). 

## Tools
SQL (joins, aggregations, group by, order by, limit, using, case when) -- [MySQL]

## Files
/data — raw CSVs
/sql — cleaning + analysis queries

## Credit
Data: Kaggle -- Attribution 4.0 International (CC BY 4.0)
