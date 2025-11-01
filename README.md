# Customer Insights & Analytics

Customer-driven analysis for a healthcare/wellness business using **Python** and **SQL** on **privacy-sanitized datasets**. The work covers core KPIs (revenue segmentation, onboarding conversion, promo/retention, AOV) and supporting techniques (e.g., **Pareto analysis**) to surface actionable opportunities.

## Objectives
- Understand revenue and customer mix by **channel** and **region**.
- Measure **signup → first-order** conversion and time-to-first-order.
- Assess **promo usage** and downstream **retention**/churn risk.
- Compare **AOV by channel** and identify high-leverage improvements.
- Apply supporting analyses (e.g., **Pareto**) to focus on the vital few.

## Data (sanitized samples)
- `customers_sanitized.csv` — id, signup_date, channel, region  
- `orders_sanitized.csv` — id, customer_id, order_date, revenue, promo_used, is_first_order  
- `web_sessions_sanitized.csv` — session_id, customer_id, session_date, source, page_views, converted  
> Note: Real identifiers and sensitive fields have been modified/removed.

## Methods
- **Python (pandas)** notebook for EDA, cohorts, rolling metrics, charts.
- **SQL** script for reproducible KPI definitions (joins, filters, grouping).
- Data quality checks (key uniqueness, non-nulls, date ordering, valid revenue).

## Key Findings (high level)
- Channel/region segmentation highlights pockets to scale and areas to fix.
- Most first orders occur within a short window after signup; targeted nudges at D3/D5/D7 help.
- Promo usage shows healthy follow-on behavior; apply guardrails and targeted offers.
- AOV varies by channel; creative/keyword hygiene improves paid channels.
- Retention concentrates in the first month; lifecycle triggers extend LTV.

## Repository Layout


data/ # sanitized datasets
notebooks/ # customer_insights_healthcare.ipynb
scripts/ # customer_insights_healthcare.sql
reports/ # customer_analytics_insights_report.pdf



## How to Run
1. Open the notebook in `notebooks/` (Jupyter/Lab).  
2. (Optional) `pip install -r requirements.txt` if present.  
3. SQL logic mirrors the notebook in `scripts/` for auditability and reuse.

## Next Steps
- Add cohort/retention visualizations to a lightweight dashboard.
- Expand Pareto and attribution analysis for paid channels.
- Set up scheduled KPI refresh with templated SQL/Python.
