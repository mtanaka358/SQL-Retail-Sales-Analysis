# Data Quality Notes

## Data Quality Summary
# Data Quality Notes

| Check | Finding | Limitation |
|---|---|---|
| Record Counts | 830 orders, 2,155 order details, and 77 products | Other tables were not included in the record count summary |
| Missing Values | No missing values detected in the selected critical columns | Not all columns were examined |
| Duplicate Checks | Primary key constraints enforce uniqueness | Business-level duplicates were not investigated |
| Date Validation | All 830 order dates passed format and date validity checks | The original date column is stored as TEXT |
| Numeric Profiling | Unit price, quantity, and discount values passed the defined numeric range checks, with zero violations detected. | Business-specific acceptable ranges were not available; NULL values require separate validation. |
| Outlier Review | No obvious anomalies were identified in the reviewed maximum values | Business validity was not independently confirmed |
| Referential Integrity | All 2,155 order detail records have matching orders; no unmatched OrderID values were found. | Other table relationships and foreign key constraint validation status were not independently verified. |

## Overall Limitations

| Limitation | Description |
|---|---|
| Scope | Data quality checks focused on critical columns used in the analysis. Not all tables and columns were examined. |
| Business Rules | Business-specific acceptable ranges for prices and quantities were not available. |
| Data Types | `OrderDate` is stored as TEXT and was converted to DATE when required for analysis. |
| Data Integrity | Primary key and foreign key constraints were reviewed, but the validation status of foreign key constraints was not independently verified. |
| Profit Calculation | Product cost data was not identified in the dataset, so profit and profit margin were excluded from the analysis. |
