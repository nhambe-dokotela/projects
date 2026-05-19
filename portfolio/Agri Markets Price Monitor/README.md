# African Agricultural Market Price Monitor

**Developer:** Nhambe DB

**Tools:** SQL (PostgreSQL) & Microsoft Power BI

**Data Source:** WFP Global Food Prices Dataset (Kaggle)

**Sector:** Agricultural Market Intelligence / Food Security

---

## Overview

This project monitors and analyses agricultural commodity price trends across six African countries between 2017 and 2021. By combining SQL-based data extraction with Power BI visualisation, the tool enables policymakers, agribusinesses, and market analysts to track price volatility, identify the most expensive markets, and compare pre- and post-2020 price shifts — a period heavily influenced by the COVID-19 pandemic.

---

## Problem Statement

Agricultural commodity prices in Africa are highly volatile and vary significantly across countries and markets. Without a centralised monitoring tool, it is difficult to identify which commodities are driving food insecurity, which markets are consistently overpriced, and how prices have shifted over time. This lack of visibility makes planning, procurement, and policy decisions reactive rather than proactive.

---

## Solution & Technical Implementation

### SQL Data Extraction
Five structured queries written in PostgreSQL:
- Average price per commodity (top 15)
- Most expensive market per country
- Maize price trend over time (2017–2021)
- Top 10 countries by average food price
- Pre- vs post-2020 price comparison (COVID-19 impact)

### Power BI Dashboard
Interactive single-page dashboard featuring:
- KPI cards — Avg Price, Max Price, Total Records, Countries Tracked
- Food price trend line chart (2017–2021)
- Top 10 commodities by average price (bar chart)
- Average price by country (bar chart)
- Interactive filters by commodity, country, and year

### Scoped Dataset
The global WFP dataset was filtered to six African countries:
Ethiopia, Kenya, Nigeria, South Africa, Uganda, and United Republic of Tanzania

---

## Key Findings

- Rice, Beans, and Millet consistently command the highest prices across African markets
- United Republic of Tanzania recorded the highest average commodity prices across all countries tracked
- Post-2020 prices increased across all six countries, reflecting COVID-19 supply chain disruptions

---

## Key Impact

- **Price Transparency:** Identifies which commodities drive food insecurity across African markets
- **Market Risk Identification:** Highlights the most expensive markets per country for procurement planning
- **COVID-19 Price Shift Analysis:** Quantifies pandemic-driven price disruptions across the continent
- **Food Security Insight:** Equips NGOs, governments, and agribusinesses with data to respond proactively

---

## Files in This Folder

| File | Description |
|------|-------------|
| `african_agri_price_monitor.pbix` | Power BI Dashboard file — open with Power BI Desktop |
| `african_agri_price_monitor.pdf` | Exported static PDF version of the dashboard |
| `African_Agricultural_Market_Price_Monitor-report.pdf` | Full project report |
| `queries.sql` | All five PostgreSQL queries used for data extraction |
| `price-monitor.html` | Portfolio project page |
| `price-monitor-dashboard.png` | Dashboard screenshot |

---

## How to View the Dashboard

1. Download `african_agri_price_monitor.pbix`
2. Open with **Microsoft Power BI Desktop** (free download at powerbi.microsoft.com)
3. All visuals and filters are fully interactive

---

*Designed and Developed by Nhambe DB — Agricultural Data Analyst — Mpumalanga, South Africa*
