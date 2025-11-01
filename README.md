# Customer Insights & Analytics

Customer-driven analysis for a healthcare business using **Python** and **SQL** on **privacy-sanitized datasets**. The work identifies major KPIs (including revenue segmentation, onboarding conversion, promo/retention, AOV) and supporting techniques (e.g., **Pareto analysis**) to provide with actionable opportunities and insights for the management team.

## Objectives
- Understand revenue and customer mix by **channel** and **region**.
- Measure **signup → first-order** conversion and time-to-first-order.
- Assess **promo usage** and downstream **retention**/churn risk.
- Compare **AOV by channel** and identify high-leverage improvements.
- Apply supporting analyses (e.g., **Pareto**) to focus on the vital few.

## Data (sanitized samples)
- `customers.csv` — id, signup_date, channel, region  
- `orders.csv` — id, customer_id, order_date, revenue, promo_used, is_first_order  
- `web_sessions.csv` — session_id, customer_id, session_date, source, page_views, converted  

## Methods
- **Python (pandas)** notebook for EDA, cohorts, rolling metrics, charts.
- **SQL** script for reproducible KPI definitions (joins, filters, grouping).
- Data quality checks (key uniqueness, non-nulls, date ordering, valid revenue).

## Some Key Findings
- Channel/region segmentation highlights pockets to scale and areas to fix.
- Most first orders occur within a short window after signup.
- Promo usage shows healthy follow-on behavior; apply guardrails and targeted offers.
- AOV varies by channel; creative/keyword hygiene improves paid channels.
- Retention concentrates in the first month; lifecycle triggers extend LTV.

## Repository Layout
- data/ # sanitized datasets
- notebooks/ # customer_insights_healthcare.ipynb
- scripts/ # customer_insights_healthcare.sql
- reports/ # customer_analytics_insights_report.pdf

## How to Run
1. Open the notebook in `notebooks/` (Jupyter/Lab).
2. SQL logic mirrors the notebook in `scripts/` for auditability and reuse.

