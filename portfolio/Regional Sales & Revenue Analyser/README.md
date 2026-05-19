# Regional Agricultural Sales & Revenue Analyser

**Developer:** Nhambe DB

**Tools:** Microsoft Excel & SQL

**Sector:** Agribusiness / Regional Sales Analysis

---

## Overview

An Excel and SQL-powered dashboard analysing agricultural sales performance across all 9 South African provinces. The tool gives agribusiness managers a consolidated view of revenue trends, top-performing products, leading suppliers, and category-level insights — all filterable by province and year through an interactive slicer-driven dashboard.

---

## Problem Statement

Agricultural businesses operating across multiple provinces often lack a consolidated view of sales performance. Without regional breakdowns it becomes difficult to identify which provinces, products, or suppliers are driving revenue — and which are underperforming. This leads to reactive rather than evidence-based procurement and distribution decisions.

---

## Solution & Technical Implementation

- **SQL Querying:** Queries written to extract revenue by province, top products, category breakdowns, supplier performance, and monthly trends
- **Power Query Transformation:** Calculated columns added for Revenue (ZAR), Province, Month, and Year from the raw dataset
- **PivotTable Analysis:** Six PivotTables covering all key dimensions of the sales data
- **Interactive Dashboard:** Province and Year slicers connected to all six PivotCharts for dynamic filtering
- **KPI Cards:** Formula-driven cards displaying Total Revenue, Top Province, Top Product, and Top Category

---

## Key Findings

- Total revenue of **R413 582 084.56** analysed across 8 700+ transactions
- **Mpumalanga** identified as the top performing province by revenue
- **Lamb** identified as the highest revenue product
- **Livestock** is the dominant category by revenue share

---

## Key Impact

- **Revenue Insight:** Province-level breakdown enables faster, evidence-based decisions
- **Supplier Intelligence:** Top supplier per province helps procurement teams identify value drivers
- **Inventory Optimisation:** Units Sold vs Units On Hand highlights overstocking or understocking by category
- **Interactive Reporting:** Any stakeholder can filter by province or year without technical skills

---

## Files in This Folder

| File | Description |
|------|-------------|
| `regional_sales_dashboard.xlsx` | Excel dashboard — open to explore sales by province and year |
| `regional-sales.pdf` | Full project report |
| `dashboard_preview.png` | Dashboard screenshot |
| `regional_sales_queries.sql` | SQL queries used for data extraction |

---

## How to Use the Dashboard

1. Download `regional_sales_dashboard.xlsx`
2. Open with **Microsoft Excel**
3. Use the **Province** and **Year** slicers to filter all charts dynamically
4. KPI cards update automatically based on your selection

---

*Designed and Developed by Nhambe DB - Agricultural Data Analyst - Mpumalanga, South Africa*
