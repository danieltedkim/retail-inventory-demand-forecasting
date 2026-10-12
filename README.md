
# Retail Inventory Optimization & Demand Forecasting

## Project Overview

This project analyzes 76,000 simulated retail inventory records across 5 stores and 20 products to evaluate inventory distribution, sales performance, and demand forecasting accuracy.

Using Microsoft Excel, I developed an inventory analysis and forecasting dashboard to identify inventory-to-demand variations, compare forecasting methods, and generate data-driven recommendations for inventory planning.

## Dashboard Preview

![Retail Inventory Optimization Dashboard](dashboard.png)

## Tools & Skills

- **Microsoft Excel:** PivotTables, formulas, and data analysis
- **Inventory Analysis:** Inventory-to-demand ratios and product-store comparisons
- **Demand Forecasting:** 3-day and 7-day moving averages
- **Forecast Evaluation:** Mean Absolute Deviation (MAD) and Mean Absolute Percentage Error (MAPE)
- **Data Visualization:** Line charts, conditional formatting, and KPI dashboards
- **Business Analytics:** Data interpretation and operational recommendations

## Key Performance Indicators

| Metric | Result |
|---|---|
| Total Units Sold | 6,750,876 |
| Total Demand | 7,928,104 |
| Sales-to-Demand Ratio | 85.15% |
| 3-Day Moving Average MAPE | 7.40% |
| 7-Day Moving Average MAPE | 8.08% |

## Analysis & Key Findings

### 1. Inventory Analysis

- Analyzed inventory and demand patterns across 20 products and 5 stores.
- Developed an inventory-to-demand heatmap to visualize differences across product-store combinations.
- Identified substantial variation in inventory-to-demand ratios, suggesting opportunities to investigate inventory allocation and replenishment strategies.

### 2. Demand Forecasting

- Developed 3-day and 7-day moving-average forecasting models using historical daily sales.
- Evaluated forecasting accuracy using MAD and MAPE.
- The 3-day moving average achieved a reported MAPE of 7.40%, compared with 8.08% for the 7-day moving average.
- Visualized actual sales against forecasted sales to evaluate short-term demand patterns.

**Note:** The two forecasting models were initially evaluated over slightly different date ranges, so their reported accuracy metrics are descriptive rather than a fully controlled comparison.

### 3. Dashboard Development

Created an Excel dashboard featuring:

- Four key performance indicators (KPIs)
- Actual sales vs. 3-day moving-average forecasting chart
- Product-store inventory-to-demand heatmap
- Business insights and recommendations

## Business Recommendations

1. **Investigate Inventory Imbalances:** Review product-store combinations with unusually high or low inventory-to-demand ratios to identify potential allocation issues.

2. **Improve Replenishment Planning:** Incorporate short-term demand forecasts into inventory planning to support more informed ordering decisions.

3. **Monitor Forecast Accuracy:** Track forecasting errors over time and evaluate alternative forecasting methods as sales patterns change.

## Project Files

| File | Description |
|---|---|
| `Retail_Inventory_Analysis.xlsx` | Complete Excel workbook containing the dataset, inventory analysis, forecasting calculations, and dashboard |
| `dashboard.png` | Screenshot of the completed Excel dashboard |
| `README.md` | Project documentation and findings |

## Dataset

This project uses a synthetic retail inventory dataset obtained from Kaggle, containing 76,000 records.

**Disclaimer:** All results are based on simulated data and are intended to demonstrate analytical methods rather than actual business performance. Inventory-to-demand ratios are descriptive indicators and do not independently establish overstocking or stockouts.

## Project Takeaways

This project strengthened my ability to analyze large datasets, build forecasting models, evaluate operational metrics, and communicate findings through business dashboards.

It demonstrates the application of Microsoft Excel and analytical techniques to inventory management, demand forecasting, and supply chain decision-making.
