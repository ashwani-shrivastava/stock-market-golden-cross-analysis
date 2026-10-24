# Stock Market Analysis: Golden Cross Signals (SQL)

## Business Objective
Analyze historical stock prices of six NSE companies using SQL to identify price trends, moving-average crossovers, Buy/Sell/Hold signals, major price movements and overall performance.

**Companies:** Bajaj Auto, Eicher Motors, Hero MotoCorp, Infosys, TCS, TVS Motors
**Period:** 1 Jan 2015 to 31 Jul 2018

## Dataset
- 6 tables with 889 trading-day records each (5,334 daily prices in total)
- 6 NULL values in `deliverable_qty` (one per stock, on two dates), kept as NULL and not replaced with 0 or an average
- Dataset provided as part of the Coding Ninjas project

## Tools Used
MySQL: CTEs, window functions (`LAG`, `AVG() OVER`), `UNION ALL`, joins, aggregations, stored function

## Approach
1. Loaded and validated six stock tables (row counts, dates, NULLs)
2. Basic queries: top 5 closing prices (Eicher), yearly average close (TCS)
3. Calculated 20-day and 50-day moving averages (MA20, MA50), starting with Bajaj
4. Generated Buy/Sell/Hold signals from crossovers using `LAG()`
   - **Buy:** MA20 crosses above MA50
   - **Sell:** MA20 crosses below MA50
   - **Hold:** otherwise
5. Applied the logic to all six stocks using `UNION ALL` and `PARTITION BY stock`
6. Counted signals and found the latest Buy/Sell signal per stock
7. Calculated first-to-last % change and the worst one-day move per stock
8. Investigated two ~50% one-day price drops (Infosys on 2015-06-15, TCS on 2018-05-31) caused by corporate actions (bonus issues)
9. Adjusted historical prices and recalculated returns
10. Built a master table of all six stocks by date
11. Analyzed signal whipsaw risk (Buy→Sell reversals within 30 days)

## Key Findings
| Stock | Buy | Sell | Latest signal |
|---|---|---|---|
| Bajaj Auto | 12 | 11 | Buy |
| Eicher Motors | 6 | 7 | Sell |
| Hero MotoCorp | 9 | 9 | Sell |
| Infosys | 9 | 9 | Buy |
| TCS | 12 | 13 | Sell |
| TVS Motors | 8 | 8 | Sell |

- Raw prices made TCS (-23.8%) and Infosys (-30.9%) look like losers. After adjusting for the ~50% price-level changes, they became **+52.4%** and **+38.2%**.
- TVS Motors (+86.9%) and Eicher Motors (+82.6%) had the strongest unadjusted growth.
- Of the 10 Buy→Sell reversals within 30 days, **9 were loss-making** (average gross return about -5.05%), showing whipsaw risk.
- Signals are historical and SQL-generated, not investment recommendations.

## How to Run
1. Download the six stock CSV files and update the file paths in `Stock_Market_Data_Load.sql`
2. Run `Stock_Market_Data_Load.sql` first (MySQL Workbench may need `LOCAL INFILE` enabled)
3. Run `Stock_Market_Analysis.sql` from top to bottom

## Files
- `Stock_Market_Data_Load.sql` : creates tables and loads data
- `Stock_Market_Analysis_.sql` : full SQL analysis
- `Stock_Market_Analysis_Final_Insights_CORRECTED.pdf` : insights report

## Limitations
Uses closing prices only, excludes dividends, brokerage, taxes and slippage, and does not model fundamentals.
