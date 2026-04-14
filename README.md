<div align="center">

# 🏨 Hotel Reservation — Data Mining Project

**Predicting Hotel Booking Cancellations with 92.93% Accuracy**\
*End-to-End Pipeline: Database Design → EDA → Feature Engineering → ML Models → Prediction App*

[![SQL Server](https://img.shields.io/badge/SQL_Server-2019+-CC2927?style=for-the-badge&logo=microsoftsqlserver&logoColor=white)](#database)
[![Python](https://img.shields.io/badge/Python-3.10+-3776AB?style=for-the-badge&logo=python&logoColor=white)](#notebooks)
[![Orange](https://img.shields.io/badge/Orange-Data_Mining-FF9800?style=for-the-badge)](#orange-workflow)
[![Power BI](https://img.shields.io/badge/Power_BI-Dashboard-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)](#dashboard)
[![Accuracy](https://img.shields.io/badge/Accuracy-92.93%25-00C853?style=for-the-badge)](#model-performance)

---

**119,208** Bookings · **60+** Engineered Features · **8** ML Models · **92.93%** Best Accuracy

</div>

---

## 📋 Table of Contents

- [Overview](#overview)
- [Project Architecture](#project-architecture)
- [Part 1 — Database Design](#part-1--database-design)
- [Part 2 — EDA & Data Mining](#part-2--eda--data-mining)
- [Part 3 — Machine Learning Pipeline](#part-3--machine-learning-pipeline)
- [Model Performance](#model-performance)
- [Files](#files)
- [Setup & Usage](#setup--usage)
- [Team](#team)

---

## Overview

Hotel booking cancellations cost the hospitality industry billions annually through lost revenue, inefficient resource allocation, and suboptimal pricing strategies. This project builds a **complete data mining pipeline** — from database design to a production-ready prediction app — to predict whether a guest will cancel their reservation.

| Part | Focus | Stack |
|------|-------|-------|
| **Part 1** | Hotel Management Database | SQL Server, ER Diagram, 28 Insight Queries |
| **Part 2** | EDA & Visual Data Mining | Python, Orange 3, Power BI |
| **Part 3** | ML Cancellation Prediction | Stacking Ensemble, XGBoost, LightGBM, HistGB |

---

## Project Architecture

```
┌──────────────────┬──────────────────────┬──────────────────────────────┐
│  PART 1: DATABASE │  PART 2: EDA & MINING │  PART 3: ML MODELS             │
│                  │                      │                              │
│  4 Tables        │  119,208 Bookings    │  8 ML Models Compared         │
│  ER Diagram      │  Python EDA Notebook │  Feature Engineering (60+)    │
│  28 SQL Queries  │  Orange Workflow     │  Stacking Ensemble            │
│  Insight Views   │  Power BI Dashboard  │  92.93% Best Accuracy         │
└──────────────────┴──────────────────────┴──────────────────────────────┘
```

---

## Part 1 — Database Design

### Database Schema

| Table | Records | Purpose |
|-------|---------|---------||
| `Departments` | 8 | Hospital organizational units |
| `Doctors` | 15 | Medical practitioners with specialties |
| `Patients` | 30 | Patient demographics and city info |
| `Appointments` | 50 | Scheduling, diagnosis, and cost tracking |

### SQL Deliverables

| File | Contents |
|------|----------|
| `Dataset & Table creation.sql` | 4 CREATE TABLE + 103 INSERT rows of seed data |
| `insight queries.sql` | 28 analytical queries (JOINs, RANK(), LAG(), CTEs) |

### Key SQL Features

- Revenue by department with **RANK()** window function
- Monthly revenue growth using **LAG()** over time
- Patient age groups with **CASE** expressions
- Running total with cumulative **SUM() OVER**
- Room availability views, cancellation analysis, payment breakdowns

### ER Diagram

📄 [`ERDiagram.pdf`](ERDiagram.pdf) — Full Entity-Relationship diagram

---

## Part 2 — EDA & Data Mining

### Dataset Overview

| Metric | Value |
|--------|-------|
| Total Bookings | 119,208 |
| Features (raw) | 32 |
| Cancellation Rate | ~37% |
| Hotel Types | Resort Hotel, City Hotel |
| Time Span | 2015–2017 |

### EDA Notebook

`EDA_Hotel_Booking.ipynb` — 46-cell comprehensive analysis covering distributions, missing values, correlations, and visualizations.

### Orange Data Mining Workflow

Results documented in `Orange results.pdf`:
- 8 models compared (Gradient Boosting, Random Forest, SVM, AdaBoost, Logistic Regression, Neural Network, kNN, Tree)
- Confusion matrix evaluation
- Correlation analysis (top: stays_in_weekend ↔ stays_in_week r=0.842)
- Distribution and box plot analysis

### Power BI Dashboard

`Hotel Reservation (1).pbix` — Interactive dashboard for exploring booking patterns, cancellation trends, and revenue insights.

---

## Part 3 — Machine Learning Pipeline

### Pipeline Steps

| # | Notebook | Step |
|---|----------|------|
| 1 | `Feature_Engineering_Hotel.ipynb` | 60+ domain features from raw data |
| 2 | `Model_Testing_Hotel.ipynb` | 8 models trained & compared |
| 3 | `BEST_Accuracy_Hotel.ipynb` | Accuracy-scored tuning + threshold optimization |
| 4 | `Hotel_Cancellation_Prediction_App.ipynb` | Production-ready prediction app |

### Models Compared

XGBoost · LightGBM · HistGradientBoosting · Extra Trees · Random Forest · AdaBoost · Logistic Regression · kNN

---

## Model Performance

### 🏆 Champion — Stacking Ensemble

| Metric | Score |
|--------|-------|
| **Accuracy** | **92.93%** |
| **F1 Score** | **0.9495** |
| **ROC-AUC** | **0.9766** |
| **Optimal Threshold** | **0.405** |

### Accuracy Journey

| Step | What | Gain |
|------|------|:----:|
| Feature Engineering | +15 domain features | +1–2% |
| SMOTE Resampling | Balanced 63:37 → 50:50 | +0.5% |
| Model Choice | HistGB / XGBoost / LightGBM | +3–5% |
| Accuracy Scoring | accuracy metric (not AUC) | +0.3% |
| Threshold Tuning | Sweep 0.20 → 0.80 | +0.5% |
| **Stacking Ensemble** | **LR meta over 5 base models** | **+1.0%** |

> **Baseline: 87.6% → Final: 92.93%** — total gain of **+5.3 pp**

### Ensemble Architecture

```
                    ┌─── XGBoost ────────┐
                    ├─── LightGBM ───────┤
Input Features ────►├─── HistGB ─────────┤──► LR Meta-Learner ──► Prediction
                    ├─── Extra Trees ────┤
                    └─── Random Forest ──┘
```

---

## Files

| File | Description |
|------|-------------|
| `Dataset & Table creation.sql` | SQL schema + seed data (4 tables, 103 rows) |
| `insight queries.sql` | 28 analytical SQL queries |
| `ERDiagram.pdf` | Entity-Relationship diagram |
| `EDA_Hotel_Booking.ipynb` | Full EDA notebook (46 cells) |
| `Orange results.pdf` | Orange workflow results & visualizations |
| `Hotel Reservation (1).pbix` | Power BI interactive dashboard |
| `Feature_Engineering_Hotel.ipynb` | Feature engineering (60+ features) |
| `Model_Testing_Hotel.ipynb` | Model training & comparison |
| `BEST_Accuracy_Hotel.ipynb` | Best accuracy config & tuning |
| `Hotel_Cancellation_Prediction_App.ipynb` | Production prediction app |
| `Hotel_Presentation.pptx` | Project presentation slides |

---

## Setup & Usage

### Database

```sql
CREATE DATABASE HospitalDB;
GO
-- Execute: Dataset & Table creation.sql
-- Run: insight queries.sql
```

### ML Pipeline

```bash
pip install numpy pandas matplotlib seaborn scikit-learn xgboost lightgbm imbalanced-learn

jupyter notebook EDA_Hotel_Booking.ipynb                  # Step 1: EDA
jupyter notebook Feature_Engineering_Hotel.ipynb           # Step 2: Features
jupyter notebook Model_Testing_Hotel.ipynb                 # Step 3: Models
jupyter notebook BEST_Accuracy_Hotel.ipynb                 # Step 4: Best Config
jupyter notebook Hotel_Cancellation_Prediction_App.ipynb   # Step 5: App
```

---

## Team

| Member | Role |
|--------|------|
| **Khaled Metwalie** | Project Lead |
| **Rahma Ahmed** | Team Member |
| **Rowan Harpy** | Team Member |
| **Rawan Mohamed** | Team Member |
| **Gehan Sultan** | Team Member |
| **Rehab Moawad** | Team Member |
| **Zahraa Moustafa** | Team Member |

**Course:** Digilians — Data Mining

---

## License

This project is licensed under the MIT License — see the [LICENSE](LICENSE) file.

---

<div align="center">

*Built with ❤️ by the DEPI Data Mining Team*

</div>
