# Customer Insights & Analytics

# Customer Insights & Analytics

Customer-driven analysis for a DTC wellness brand using **Python, SQL, and sanitized datasets** to assess **revenue, conversion, promo effectiveness, and retention**.

## 🎯 Objectives
- Segment revenue by **channel** and **region**.
- Measure **signup → first-order** conversion in 7 days.
- Evaluate **promo usage** and follow-on retention.
- Compare **AOV by channel** and analyze **rolling revenue** + **30/60/90-day retention**. :contentReference[oaicite:0]{index=0}

## 📁 Data
- `customers.csv` (id, signup_date, channel, region)  
- `orders.csv` (id, customer_id, order_date, revenue, promo_used, is_first_order)  
- `web_sessions.csv` (session_id, customer_id, session_date, source, page_views, converted)  
All files are **sanitized samples** for privacy. :contentReference[oaicite:1]{index=1}

## 🔧 Methods
- **Python (pandas)** for EDA, rolling metrics & retention cohorts.
- **SQL** for reproducible KPI logic (grouping, joins, filters).
- Data validation prior to analysis: key uniqueness, non-null revenue > 0, timeline checks. :contentReference[oaicite:2]{index=2}

## 📊 Key Results (highlights)
- **Revenue by segment** surfaced channel/region pockets to scale (e.g., strong organic & referral patterns). :contentReference[oaicite:3]{index=3}
- **7-day conversion:** 30 customers converted quickly, but the majority need onboarding nudges (D3/D5/D7). :contentReference[oaicite:4]{index=4}
- **Promo use & retention:** only **7/81** promo users churned → **8.64%** churn; unusually healthy. :contentReference[oaicite:5]{index=5}
- **AOV:** **$103.20** overall; strongest via Social; Paid/Referral lag. :contentReference[oaicite:6]{index=6}
- **Retention:** 30/60/90-day ≈ **71% / 92% / 93%**; most re-orders happen in first 30 days. :contentReference[oaicite:7]{index=7}

## 🧭 Business Questions Addressed
- Why can **orders > customers**? (1-to-many).  
- **High-frequency buyers** exist; consider VIP monitoring & abuse checks.  
- **Promo reuse** observed; add guardrails & targeted offers.  
- **Long signup→order gaps** point to onboarding friction and urgency. :contentReference[oaicite:8]{index=8}

## 📂 Repository Layout
