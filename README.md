# E-Commerce Data Analysis

## Overview
This project demonstrates an **end-to-end data analytics workflow** on UK-based e-commerce transactions (~250,000 records). The goal is to provide actionable insights on top-selling products, revenue trends, customer behavior, and product returns.

**Tools Used:** Python (data cleaning), MySQL (queries), Tableau (visualization)

---

## Dataset
Each record contains:

`InvoiceNo | StockCode | Description | Quantity | InvoiceDate | UnitPrice | CustomerID | Country`

**Cleaning Steps:**
- Removed missing CustomerIDs and duplicates  
- Filtered non-product entries (bank charges, postage, manual entries)  
- Converted dates to SQL-compatible format  

---

## Analyses
1. Top 10 Customers by Revenue  
2. Top 10 Products by Revenue  
3. Monthly Revenue Trend  
4. Top 10 Countries by Revenue  
5. Top 10 Most Returned Products  

---

## Key Insights
- Revenue is concentrated among a few customers; mid-tier customers could be targeted for growth.  
- Slight revenue decline observed from Oct–Dec 2011; further investigation recommended.  
- Some products have very high returns, suggesting quality or description issues.  
- UK dominates revenue; international expansion could diversify earnings.  

---

## Project Structure
# E-Commerce Data Analysis

## Overview
This project demonstrates an **end-to-end data analytics workflow** on UK-based e-commerce transactions (~250,000 records). The goal is to provide actionable insights on top-selling products, revenue trends, customer behavior, and product returns.

**Tools Used:** Python (data cleaning & EDA), MySQL (queries), Tableau (visualization)

---

## Dataset
Each record contains:

`InvoiceNo | StockCode | Description | Quantity | InvoiceDate | UnitPrice | CustomerID | Country`

**Cleaning Steps:**
- Removed missing CustomerIDs and duplicates  
- Filtered non-product entries (bank charges, postage, manual entries)  
- Converted dates to SQL-compatible format  

---

## Analyses
1. Top 10 Customers by Revenue  
2. Top 10 Products by Revenue  
3. Monthly Revenue Trend  
4. Top 10 Countries by Revenue  
5. Top 10 Most Returned Products  

---

## Key Insights
- Revenue is concentrated among a few customers; mid-tier customers could be targeted for growth.  
- Slight revenue decline observed from Oct–Dec 2011; further investigation recommended.  
- Some products have very high returns, suggesting quality or description issues.  
- UK dominates revenue; international expansion could diversify earnings.  

---

## Project Structure
ecommerce-data-analysis/
├── README.md
├── ecommerce_analysis.ipynb
├── sql/               # schema.sql, insert.sql, analysis.sql
├── tableau/           # dashboard.twbx
├── data/              # cleaned dataset 
└── images/            # dashboard.png


---

## Conclusion
This project showcases a full analytics workflow from **data cleaning → SQL queries → Tableau visualization**, providing actionable insights for e-commerce business decisions.
