# Crop Yield Predictor

**Developer:** Nhambe DB

**Tools:** Python (Pandas, NumPy, Matplotlib, Seaborn, Scikit-learn) & Microsoft Excel

**Data Source:** Global Crop Yield Dataset (Kaggle)

**Sector:** Agribusiness / Crop Yield Analysis

---

## Overview

A Python-powered predictive analytics project analysing global crop yield data across multiple countries and crops. Two machine learning models were built and compared — Linear Regression and Random Forest — with Random Forest achieving an R² of 0.99 across 28 243 data points, explaining 99% of yield variation. Key findings were visualised in an interactive Excel dashboard.

---

## Problem Statement

Agricultural planners and policymakers often lack data-driven tools to understand which crops and regions produce the highest yields and what environmental factors drive those outcomes. Without predictive models, resource allocation decisions rely on intuition rather than evidence leading to inefficient planting strategies and missed yield potential.

---

## Solution & Technical Implementation

- **Phase 1: Data Cleaning:** Raw dataset cleaned and prepared using Pandas
- **Phase 2: Exploratory Analysis:** Top countries, top crops, and relationships between rainfall, temperature, and pesticide usage analysed
- **Phase 3: Predictive Modelling:** Two models built using Scikit-learn, Linear Regression and Random Forest
- **Phase 4: Model Comparison:** Performance evaluated using R² and RMSE, Random Forest dramatically outperformed Linear Regression
- **Phase 5: Excel Dashboard:** Results exported to an interactive dashboard with KPI cards, 3 charts, and a slicer

---

## Key Findings

- **Potatoes** are the highest yielding crop globally
- **Belgium** leads all countries in average potato yield at 448 891 hg/ha
- Random Forest achieved an **87% reduction in prediction error** over Linear Regression (RMSE: 10 181 vs 81 501)
- R² of **0.99** confirms that rainfall, temperature, and pesticide inputs are strong predictors of yield

---

## Key Impact

- Gives agricultural planners a data-driven basis for crop selection decisions
- Identifies which environmental inputs most influence yield outcomes
- Predictive model can forecast yield based on rainfall, temperature, and pesticide inputs
- Model comparison demonstrates the value of non-linear approaches for agricultural data

---

## Files in This Folder

| File | Description |
|------|-------------|
| `Crop_yield_analysis.ipynb` | Jupyter Notebook — full Python analysis and model building |
| `yield_summary.csv` | Cleaned dataset used for analysis |
| `crop-yield-dashboard.png` | Excel dashboard screenshot |
| `feature_importance_rf.png` | Random Forest feature importance chart |
| `model-comparison-table.png` | Linear Regression vs Random Forest comparison |
| `top_10_countries_by_yield.png` | Top 10 countries by average crop yield |
| `crop_yield_predictor_report.pdf` | Full project report |
| `crop-yield.html` | Portfolio project page |

---

## How to Run the Analysis

1. Download `Crop_yield_analysis.ipynb`
2. Open with **Jupyter Notebook** or **VS Code** with the Jupyter extension
3. Install required libraries if needed:
```bash
   pip install pandas numpy matplotlib seaborn scikit-learn
```
4. Run all cells to reproduce the full analysis and model results

---

*Designed and Developed by Nhambe DB - Agricultural Data Analyst - Mpumalanga, South Africa*
