# 🌱 Farm Input Cost Optimiser

> Agricultural input cost analysis across 22 crops using Python & Google Looker Studio.

---

## 📌 Project Overview

| Field | Details |
|---|---|
| **Developer** | Nhambe DB |
| **Tools** | Python (Pandas, Matplotlib, Seaborn) · Google Looker Studio |
| **Data Source** | [Crop Recommendation Dataset — Kaggle](https://www.kaggle.com/) |
| **Sector** | Agricultural Input Optimisation / Precision Farming |
| **Status** | ✅ Complete |

---

## 🧩 Problem Statement

Fertilizer is one of the largest operational costs in farming. Without clear, crop-specific data on nitrogen (N), phosphorus (P), and potassium (K) requirements, farmers risk over-applying inputs — driving up costs and causing soil damage — or under-applying and suppressing yields.

This project addresses that gap by delivering a crop-by-crop input cost comparison tool with efficiency scoring built in.

---

## 🛠️ Solution & Technical Implementation

### Python Pipeline (`farm_input_cost_optimiser.ipynb`)

- **Data Cleaning** — Pandas used to inspect structure, confirm dtypes, and verify crop label consistency across 22 categories.
- **Feature Engineering** — `Total Input` feature created as `N + P + K` per crop record.
- **Efficiency Score** — Calculated as `Rainfall ÷ Total Input` per crop to rank crops by output potential relative to nutrient demand.
- **Export** — Two clean CSVs exported:
  - `Farm Input Optimiser Clean` — full processed dataset
  - `Efficiency Summary` — aggregated efficiency rankings per crop
- **Exploratory Visualisation** — Bar charts and scatter plots generated in Matplotlib and Seaborn to validate trends before dashboard build.

### Looker Studio Dashboard

- 3 KPI Scorecards — Average N, P, K across all crops
- Total Fertilizer bar chart (N+P+K) per crop
- Efficiency Ranking chart — crops ordered by efficiency score
- Grouped N/P/K breakdown — nutrient-level comparison across crops
- Rainfall vs Total Input scatter chart
- Interactive crop name dropdown filter — updates all charts simultaneously

---

## 📊 Key Findings

| Finding | Insight |
|---|---|
| **Highest input crop** | Jute requires the most total fertilizer (N+P+K) — highest procurement cost |
| **Most efficient crops** | Coconut & Orange rank highest on rainfall-to-input efficiency |
| **Low-input options** | Chickpea & Lentil require significantly less fertilizer — cost-effective alternatives |
| **Rainfall ≠ Input demand** | No strong linear relationship found — crop type dominates input decisions, not climate |

---

## 💡 Recommendations

- **Use low-input crops** (chickpea, lentil) during high-fertilizer-cost seasons to protect margins.
- **Prioritise efficient crops** (coconut, orange) in multi-crop planning where climate allows.
- **Avoid blanket fertilizer application** — N/P/K profiles vary significantly across crops; custom blending reduces waste.
- **Plan procurement early** for input-heavy crops like jute based on Total Input rankings.
- **Do not use rainfall as a proxy** for fertilizer planning — always anchor decisions in crop-specific data.

---

## 📁 Project Structure

```
Farm Input Cost Optimiser/
│
├── farm_input_cost_optimiser.ipynb   # Python notebook (cleaning, EDA, feature engineering)
├── farm_input_optimiser_clean.csv    # Processed dataset
├── efficiency_summary.csv            # Aggregated efficiency scores per crop
├── Farm_Input_Cost_Optimiser_Report.pdf  # Full project report
└── README.md
```

---

## 🔗 Links

- 🌐 [Live Dashboard (Looker Studio)](https://datastudio.google.com/reporting/3cd385cb-cad0-4659-8c2d-00379de65804/page/j9GzF)
- 📓 [Download Notebook](https://nhambe-dokotela.github.io/Nhambe-DB_portfolio-web/projects/farm-input-cost-optimizer/farm_input_cost_optimiser.ipynb)
- 🗂️ [View on GitHub](https://github.com/nhambe-dokotela/projects/tree/main/portfolio/Farm%20Input%20Cost%20Optimiser)
- 💼 [Portfolio Website](https://nhambe-dokotela.github.io/Nhambe-DB_portfolio-web/index.html)

---

## ⚙️ How to Run

1. Clone or download the repository.
2. Open `farm_input_cost_optimiser.ipynb` in Google Colab or Jupyter.
3. Run all cells — no additional setup required beyond standard data science libraries.
4. To explore the dashboard, open the Looker Studio link above and use the crop filter.

```bash
# Libraries used
pandas
matplotlib
seaborn
```

---

## 🚧 Limitations & Future Work

- Dataset uses nutrient quantities, not real fertilizer market prices — cost comparisons are relative, not financial.
- Crop data is global averages and not calibrated to South African soil conditions.
- Future: integrate Rand/kg fertilizer prices to convert quantity into actual cost per hectare.
- Future: add scenario modelling — e.g. *"If fertilizer prices rise 15%, which crops become unviable?"*

---

*Designed & developed by [Nhambe DB](https://nhambe-dokotela.github.io/Nhambe-DB_portfolio-web/index.html) — Agricultural Data Analyst · Mbombela, Mpumalanga*
