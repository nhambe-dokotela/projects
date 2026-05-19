# Maize Quality & Risk Analyzer

**Developer:** Nhambe DB

**Tool:** Microsoft Excel (Advanced Logic & Data Modeling

**Sector:** Agribusiness / Quality Control

---

## Overview

A standardised Excel-based tool designed for Quality Control Clerks to assess maize batches at the point of intake. The analyzer eliminates subjective decision-making by applying a weighted risk engine across seven critical quality metrics, automatically flagging high-risk batches and generating Accept/Reject decisions in real time.

---

## Problem Statement

Before this tool, there was no uniform method for calculating intake risk. Decisions were inconsistent across clerks and sites, increasing the likelihood of mold contamination, grain spoilage, and reduced customer trust. The lack of a data-driven framework meant high-risk batches were sometimes accepted and good batches sometimes rejected unnecessarily.

---

## Solution & Technical Implementation

- **Weighted Risk Engine:** Evaluates seven critical metrics including Moisture (%), Aflatoxin (ppb), and Insect Damage — each weighted by severity of impact on grain quality
- **Automated Decision Logic:** Accept/Reject logic automatically triggers high-risk alerts when critical thresholds are breached (e.g., moisture >14%)
- **Farmer Performance Tracking:** Lookup system allows quality managers to review and compare intake results across multiple farms
- **Standardised Framework:** Removes subjectivity from the intake process — every clerk uses the same criteria and thresholds

---

## Key Impact

- **Waste Reduction:** Blocks high-risk batches at intake to lower probability of grain spoilage downstream
- **Data-Driven Extension Services:** Provincial managers get clear quality data to address recurring issues with specific farmers
- **Operational Speed:** Streamlines the intake assessment process for faster throughput during peak harvest seasons
- **Consistency:** Uniform decisions across all intake points regardless of which clerk is on duty

---

## Files in This Folder

| File | Description |
|------|-------------|
| `maize_dashboard.xlsx` | Excel dashboard — open to run intake assessments |
| `maize_intake_quality_analyzer.png` | Dashboard screenshot |
| `maize.html` | Portfolio project page |

---

## How to Use the Dashboard

1. Download `maize_dashboard.xlsx`
2. Open with **Microsoft Excel**
3. Enter maize batch metrics into the input fields
4. The weighted risk engine calculates the score and returns an Accept/Reject decision automatically

---

*Designed and Developed by Nhambe DB - Agricultural Data Analyst - Mpumalanga, South Africa*
