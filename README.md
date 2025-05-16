# Bank_Loan_Dashboard
This repository contains my Bank Loan Dashboard Project
<hr/>
1. Bank Loan Dashboard:-

https://github.com/user-attachments/assets/cb3540ae-c1d0-44e4-87f1-add5e9adc04b

# 🏦 Bank Loan Report Dashboard - Power BI Project

## 📊 Project Overview

This Power BI project presents an in-depth analysis of a bank's loan portfolio. It is designed to help stakeholders understand key metrics related to loan applications, funding, repayments, and borrower profiles. The dashboard offers actionable insights into loan performance, default risks, borrower behavior, and financial trends.

The report is divided into **three main dashboards**:  
1. **Summary** – High-level KPIs and performance metrics  
2. **Overview** – Loan distribution and time-based insights  
3. **Details** – Granular loan-level breakdown for deep analysis

---

## 📁 File Contents

- `BankLoanReport.pbix` – Power BI project file (dashboard with visuals, metrics, and filters)

---

## 🎯 Objectives

- Monitor total and recent loan applications
- Track funded and received amounts (repayments)
- Assess interest rates and borrower DTI ratios
- Compare good vs. bad loan distribution
- Identify trends over time and across borrower segments
- Provide decision-makers with actionable financial insights

---

## 📌 Dashboard Breakdown

### 1️⃣ Summary Dashboard

![image](https://github.com/user-attachments/assets/2858a22f-ca60-4e2e-bec8-9c50b71c0acb)


#### 🎯 Purpose:
A high-level view of the bank's overall loan performance and key indicators.

#### 📈 Key Features:
- **KPI Cards**: Total, Month-To-Date (MTD), and Month-Over-Month (MoM) metrics for:
  - Loan Applications
  - Funded Amount
  - Amount Received
  - Average Interest Rate
  - Average Debt-to-Income (DTI) Ratio
- **Good vs. Bad Loan Distribution** (Donut Chart)
- **Bad Loan Summary** (Card Visuals):
  - Applications, Funded Amount, and Received Amount for bad loans
- **Loan Status Table**:
  - Breakdown of metrics by loan status (e.g., Current, Charged Off, Late)
- **Interactive Filters**:
  - State, Loan Grade, Loan Purpose

#### 🧠 Insights:
- Monitor loan growth trends and risk levels
- Quickly identify changes in repayment and funding behavior
- Evaluate the proportion and financial impact of bad loans

---

### 2️⃣ Overview Dashboard

![image](https://github.com/user-attachments/assets/5e0e825c-1acc-4a0d-8f02-0920ef6bb789)


#### 🎯 Purpose:
Visual exploration of loan distribution across categories and time periods.

#### 📈 Key Charts & Visuals:
- **Loan Applications Over Time** (Area Chart)
- **Loan Term Distribution** (Donut Chart)
- **Employment Length Breakdown** (Bar Chart)
- **Loan Purpose** (Bar Chart)
- **Home Ownership** (Treemap)
- **Geographic Distribution** (Filled US Map)

#### 🎛 Filters:
- State
- Grade
- Good vs. Bad Loans
- Dynamic Measure Selector (optional extension)

#### 🧠 Insights:
- Identify borrower behavior based on employment, home status, and purpose
- Track regional loan activity across the U.S.
- Compare short-term vs long-term loan preferences

---

### 3️⃣ Details Dashboard

![image](https://github.com/user-attachments/assets/b11c02c3-4fc3-4a61-9028-164af94bfdc2)


#### 🎯 Purpose:
Granular view for deep-dive analysis and operational insights.

#### 📄 Table Columns:
- Loan Purpose, Home Ownership, Grade, Sub-Grade
- Issue Date
- Total Funded Amount, Installments, Interest Rate
- Amount Received
- Count of Loans

#### 🎛 Filters:
- State
- Grade
- Good vs. Bad Loans

#### 🧠 Use Cases:
- Audit specific loan categories
- Drill into problem areas (e.g., high default sub-grades)
- Analyze detailed trends by issue date and borrower profile

---

## 👤 Stakeholders

- **Loan Managers** – Assess funding and default trends
- **Risk Analysts** – Monitor credit grades, DTI, and bad loan patterns
- **Executives** – View overall portfolio health
- **Data Analysts** – Drill down into specific loan performance metrics

---

## ✅ Tools Used

- **Power BI Desktop** – For data visualization and dashboard development
- **DAX** – For calculated measures and KPIs
- **Power Query** – For data transformations and modeling
- **Postgres SQL** – For Data Storage,Processing and cleaning

---

## 📌 Key Metrics Definitions

- **Loan Applications**: Number of loan requests submitted
- **Funded Amount**: Total amount disbursed by the bank
- **Amount Received**: Loan repayments collected
- **Interest Rate**: Average annual rate charged to borrowers
- **DTI Ratio**: Borrower's Debt-to-Income percentage
- **Good/Bad Loans**: Classification based on loan performance (e.g., current vs defaulted)

---

## 📣 Summary

This dashboard provides a **360-degree view** of the loan lifecycle – from application to repayment – with intuitive visuals, filters, and KPIs. Whether you are a stakeholder looking for a quick snapshot or an analyst digging into specifics, this report offers both **depth and clarity**.
