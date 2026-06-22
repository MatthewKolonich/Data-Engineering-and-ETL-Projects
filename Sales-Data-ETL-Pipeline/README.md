# Sales Data ETL Pipeline

## Project Overview
This project demonstrates an ETL (Extract, Transform, Load) pipeline built to consolidate multi-year sales data into a unified staging table. The goal was to standardize inconsistent schemas across separate datasets and prepare the data for downstream analysis.

## Project Scope
The pipeline combines sales data from 2022, 2023, and 2024 into a single staging table for easier reporting and analysis.

## ETL Process
### Extract
- Imported raw sales datasets from three separate yearly files.
- Reviewed differences in schema structure and column naming.

### Transform
- Standardized inconsistent column names across datasets.
- Combined multiple quantity fields into unified totals.
- Calculated missing `orderTotal` values using derived formulas.
- Applied discounts where necessary.
- Added a `yearInt` field to preserve yearly tracking.

### Load
- Loaded transformed data into a centralized staging table.
- Preserved all records across all three years.

## Technical Skills Demonstrated
- SQL table creation
- Data staging
- Data transformation
- Multi-source ingestion
- Schema normalization
- Derived field calculations
- Data consolidation

## Files Included
- `sales-data-etl-pipeline-documentation.pdf`
- `sales-data-etl-pipeline-sql-code.sql`

## Tools Used
- SQL
- SQLite
- Data transformation workflows

## Future Improvements
Future improvements could include automating the ETL pipeline with Python, adding validation checks, integrating warehouse tables, and building dashboard visualizations on top of the staging table.
