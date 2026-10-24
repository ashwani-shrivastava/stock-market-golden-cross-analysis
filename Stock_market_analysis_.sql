-- =====================================================
-- STOCK MARKET ANALYSIS PROJECT
-- =====================================================
-- CORRECTED VERSION
--
-- IMPORTANT SETUP:
-- 1. Create/use the stock_market_analysis database.
-- 2. Run Stock_Market_Data_Load.sql first to create/load the
--    six base stock tables.
-- 3. Then run this analysis notebook from top to bottom.
--
-- The analysis file intentionally keeps LOAD DATA statements
-- out of the main notebook because file paths are machine-specific.
-- =====================================================


-- =====================================================
-- STEP 1: DATABASE SETUP
-- =====================================================

CREATE DATABASE IF NOT EXISTS stock_market_analysis;

USE stock_market_analysis;



-- =====================================================
-- STEP 2: CREATE STOCK TABLES
-- =====================================================

-- Bajaj Auto
CREATE TABLE IF NOT EXISTS bajaj_auto (
    `date` DATE PRIMARY KEY,
    open_price DECIMAL(12,2),
    high_price DECIMAL(12,2),
    low_price DECIMAL(12,2),
    close_price DECIMAL(12,2),
    wap DECIMAL(16,4),
    no_of_shares BIGINT,
    no_of_trades BIGINT,
    total_turnover DECIMAL(20,2),
    deliverable_qty BIGINT,
    pct_deli_qty DECIMAL(6,2),
    spread_high_low DECIMAL(12,2),
    spread_close_open DECIMAL(12,2)
);


-- Eicher Motors
CREATE TABLE IF NOT EXISTS eicher_motors (
    `date` DATE PRIMARY KEY,
    open_price DECIMAL(12,2),
    high_price DECIMAL(12,2),
    low_price DECIMAL(12,2),
    close_price DECIMAL(12,2),
    wap DECIMAL(16,4),
    no_of_shares BIGINT,
    no_of_trades BIGINT,
    total_turnover DECIMAL(20,2),
    deliverable_qty BIGINT,
    pct_deli_qty DECIMAL(6,2),
    spread_high_low DECIMAL(12,2),
    spread_close_open DECIMAL(12,2)
);


-- Hero Motocorp
CREATE TABLE IF NOT EXISTS hero_motocorp (
    `date` DATE PRIMARY KEY,
    open_price DECIMAL(12,2),
    high_price DECIMAL(12,2),
    low_price DECIMAL(12,2),
    close_price DECIMAL(12,2),
    wap DECIMAL(16,4),
    no_of_shares BIGINT,
    no_of_trades BIGINT,
    total_turnover DECIMAL(20,2),
    deliverable_qty BIGINT,
    pct_deli_qty DECIMAL(6,2),
    spread_high_low DECIMAL(12,2),
    spread_close_open DECIMAL(12,2)
);


-- Infosys
CREATE TABLE IF NOT EXISTS infosys (
    `date` DATE PRIMARY KEY,
    open_price DECIMAL(12,2),
    high_price DECIMAL(12,2),
    low_price DECIMAL(12,2),
    close_price DECIMAL(12,2),
    wap DECIMAL(16,4),
    no_of_shares BIGINT,
    no_of_trades BIGINT,
    total_turnover DECIMAL(20,2),
    deliverable_qty BIGINT,
    pct_deli_qty DECIMAL(6,2),
    spread_high_low DECIMAL(12,2),
    spread_close_open DECIMAL(12,2)
);


-- TCS
CREATE TABLE IF NOT EXISTS tcs (
    `date` DATE PRIMARY KEY,
    open_price DECIMAL(12,2),
    high_price DECIMAL(12,2),
    low_price DECIMAL(12,2),
    close_price DECIMAL(12,2),
    wap DECIMAL(16,4),
    no_of_shares BIGINT,
    no_of_trades BIGINT,
    total_turnover DECIMAL(20,2),
    deliverable_qty BIGINT,
    pct_deli_qty DECIMAL(6,2),
    spread_high_low DECIMAL(12,2),
    spread_close_open DECIMAL(12,2)
);


-- TVS Motors
CREATE TABLE IF NOT EXISTS tvs_motors (
    `date` DATE PRIMARY KEY,
    open_price DECIMAL(12,2),
    high_price DECIMAL(12,2),
    low_price DECIMAL(12,2),
    close_price DECIMAL(12,2),
    wap DECIMAL(16,4),
    no_of_shares BIGINT,
    no_of_trades BIGINT,
    total_turnover DECIMAL(20,2),
    deliverable_qty BIGINT,
    pct_deli_qty DECIMAL(6,2),
    spread_high_low DECIMAL(12,2),
    spread_close_open DECIMAL(12,2)
);



-- =====================================================
-- STEP 3: LOAD STOCK DATA
-- =====================================================

-- NOTE:
-- These LOAD DATA queries have ALREADY been executed.
-- DO NOT execute them again because the tables already
-- contain 889 rows each.


-- Bajaj Auto
/*
LOAD DATA LOCAL INFILE 'C:/Users/ashwa/Downloads/Bajaj Auto.csv'
INTO TABLE bajaj_auto
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@d,@o,@h,@l,@c,@w,@s,@tr,@to,@dq,@pd,@shl,@sco)
SET
    `date` = STR_TO_DATE(@d, '%d-%M-%Y'),
    open_price = NULLIF(@o,''),
    high_price = NULLIF(@h,''),
    low_price = NULLIF(@l,''),
    close_price = NULLIF(@c,''),
    wap = NULLIF(@w,''),
    no_of_shares = NULLIF(@s,''),
    no_of_trades = NULLIF(@tr,''),
    total_turnover = NULLIF(@to,''),
    deliverable_qty = NULLIF(@dq,''),
    pct_deli_qty = NULLIF(@pd,''),
    spread_high_low = NULLIF(@shl,''),
    spread_close_open = NULLIF(TRIM(@sco),'');
*/


-- Eicher Motors
/*
LOAD DATA LOCAL INFILE 'C:/Users/ashwa/Downloads/Eicher Motors.csv'
INTO TABLE eicher_motors
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@d,@o,@h,@l,@c,@w,@s,@tr,@to,@dq,@pd,@shl,@sco)
SET
    `date` = STR_TO_DATE(@d, '%d-%M-%Y'),
    open_price = NULLIF(@o,''),
    high_price = NULLIF(@h,''),
    low_price = NULLIF(@l,''),
    close_price = NULLIF(@c,''),
    wap = NULLIF(@w,''),
    no_of_shares = NULLIF(@s,''),
    no_of_trades = NULLIF(@tr,''),
    total_turnover = NULLIF(@to,''),
    deliverable_qty = NULLIF(@dq,''),
    pct_deli_qty = NULLIF(@pd,''),
    spread_high_low = NULLIF(@shl,''),
    spread_close_open = NULLIF(TRIM(@sco),'');
*/


-- Hero Motocorp
/*
LOAD DATA LOCAL INFILE 'C:/Users/ashwa/Downloads/Hero Motocorp.csv'
INTO TABLE hero_motocorp
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@d,@o,@h,@l,@c,@w,@s,@tr,@to,@dq,@pd,@shl,@sco)
SET
    `date` = STR_TO_DATE(@d, '%d-%M-%Y'),
    open_price = NULLIF(@o,''),
    high_price = NULLIF(@h,''),
    low_price = NULLIF(@l,''),
    close_price = NULLIF(@c,''),
    wap = NULLIF(@w,''),
    no_of_shares = NULLIF(@s,''),
    no_of_trades = NULLIF(@tr,''),
    total_turnover = NULLIF(@to,''),
    deliverable_qty = NULLIF(@dq,''),
    pct_deli_qty = NULLIF(@pd,''),
    spread_high_low = NULLIF(@shl,''),
    spread_close_open = NULLIF(TRIM(@sco),'');
*/


-- Infosys
/*
LOAD DATA LOCAL INFILE 'C:/Users/ashwa/Downloads/Infosys.csv'
INTO TABLE infosys
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@d,@o,@h,@l,@c,@w,@s,@tr,@to,@dq,@pd,@shl,@sco)
SET
    `date` = STR_TO_DATE(@d, '%d-%M-%Y'),
    open_price = NULLIF(@o,''),
    high_price = NULLIF(@h,''),
    low_price = NULLIF(@l,''),
    close_price = NULLIF(@c,''),
    wap = NULLIF(@w,''),
    no_of_shares = NULLIF(@s,''),
    no_of_trades = NULLIF(@tr,''),
    total_turnover = NULLIF(@to,''),
    deliverable_qty = NULLIF(@dq,''),
    pct_deli_qty = NULLIF(@pd,''),
    spread_high_low = NULLIF(@shl,''),
    spread_close_open = NULLIF(TRIM(@sco),'');
*/


-- TCS
/*
LOAD DATA LOCAL INFILE 'C:/Users/ashwa/Downloads/TCS.csv'
INTO TABLE tcs
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@d,@o,@h,@l,@c,@w,@s,@tr,@to,@dq,@pd,@shl,@sco)
SET
    `date` = STR_TO_DATE(@d, '%d-%M-%Y'),
    open_price = NULLIF(@o,''),
    high_price = NULLIF(@h,''),
    low_price = NULLIF(@l,''),
    close_price = NULLIF(@c,''),
    wap = NULLIF(@w,''),
    no_of_shares = NULLIF(@s,''),
    no_of_trades = NULLIF(@tr,''),
    total_turnover = NULLIF(@to,''),
    deliverable_qty = NULLIF(@dq,''),
    pct_deli_qty = NULLIF(@pd,''),
    spread_high_low = NULLIF(@shl,''),
    spread_close_open = NULLIF(TRIM(@sco),'');
*/


-- TVS Motors
/*
LOAD DATA LOCAL INFILE 'C:/Users/ashwa/Downloads/TVS Motors.csv'
INTO TABLE tvs_motors
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@d,@o,@h,@l,@c,@w,@s,@tr,@to,@dq,@pd,@shl,@sco)
SET
    `date` = STR_TO_DATE(@d, '%d-%M-%Y'),
    open_price = NULLIF(@o,''),
    high_price = NULLIF(@h,''),
    low_price = NULLIF(@l,''),
    close_price = NULLIF(@c,''),
    wap = NULLIF(@w,''),
    no_of_shares = NULLIF(@s,''),
    no_of_trades = NULLIF(@tr,''),
    total_turnover = NULLIF(@to,''),
    deliverable_qty = NULLIF(@dq,''),
    pct_deli_qty = NULLIF(@pd,''),
    spread_high_low = NULLIF(@shl,''),
    spread_close_open = NULLIF(TRIM(@sco),'');
*/



-- =====================================================
-- STEP 4: VALIDATE STOCK DATA
-- =====================================================

-- Bajaj Auto
SELECT
    COUNT(*) AS trading_days,
    MIN(date) AS first_day,
    MAX(date) AS last_day
FROM bajaj_auto;


-- Eicher Motors
SELECT
    COUNT(*) AS trading_days,
    MIN(date) AS first_day,
    MAX(date) AS last_day
FROM eicher_motors;


-- Hero Motocorp
SELECT
    COUNT(*) AS trading_days,
    MIN(date) AS first_day,
    MAX(date) AS last_day
FROM hero_motocorp;


-- Infosys
SELECT
    COUNT(*) AS trading_days,
    MIN(date) AS first_day,
    MAX(date) AS last_day
FROM infosys;


-- TCS
SELECT
    COUNT(*) AS trading_days,
    MIN(date) AS first_day,
    MAX(date) AS last_day
FROM tcs;


-- TVS Motors
SELECT
    COUNT(*) AS trading_days,
    MIN(date) AS first_day,
    MAX(date) AS last_day
FROM tvs_motors;



-- =====================================================
-- TASK 2: EICHER MOTORS — TOP FIVE CLOSING PRICES
-- Guide checkpoint: highest close first; top close = 32786.40
-- on 2017-09-07.
-- =====================================================

SELECT
    date,
    close_price
FROM eicher_motors
ORDER BY close_price DESC
LIMIT 5;


-- =====================================================
-- TASK 3: TCS — YEAR-BY-YEAR AVERAGE CLOSE
-- Guide checkpoint: 4 rows (2015-2018); 2016 average = 2419.00
-- =====================================================

SELECT
    YEAR(date) AS year,
    ROUND(AVG(close_price), 2) AS avg_close
FROM tcs
GROUP BY YEAR(date)
ORDER BY year;


-- =====================================================
-- TASK 4: DATA QUALITY CHECK
-- Find Missing Deliverable Quantity
-- =====================================================

SELECT 'bajaj_auto' AS stock, date
FROM bajaj_auto
WHERE deliverable_qty IS NULL

UNION ALL

SELECT 'eicher_motors', date
FROM eicher_motors
WHERE deliverable_qty IS NULL

UNION ALL

SELECT 'hero_motocorp', date
FROM hero_motocorp
WHERE deliverable_qty IS NULL

UNION ALL

SELECT 'infosys', date
FROM infosys
WHERE deliverable_qty IS NULL

UNION ALL

SELECT 'tcs', date
FROM tcs
WHERE deliverable_qty IS NULL

UNION ALL

SELECT 'tvs_motors', date
FROM tvs_motors
WHERE deliverable_qty IS NULL

ORDER BY date, stock;


-- Conclusion:
-- 6 missing deliverable_qty records were identified
-- across 2 dates:
-- 09-Dec-2015: Eicher Motors, Hero Motocorp, TCS, TVS Motors
-- 31-Aug-2017: Bajaj Auto, Infosys
-- These are missing values within existing rows,
-- not missing trading-day records.



-- =====================================================
-- TASK 5: INSPECT BAJAJ AUTO CLOSING PRICES
-- =====================================================

SELECT
    date,
    close_price
FROM bajaj_auto
ORDER BY date
LIMIT 10;


-- Conclusion:
-- close_price will be used as the primary input
-- for calculating the moving averages.



-- =====================================================
-- TASK 5A: CREATE bajaj1 WITH MA20 AND MA50
-- =====================================================
-- Compatibility note: the CTE is placed inside the FROM subquery
-- so this CREATE TABLE ... AS statement works reliably in MySQL Workbench.

DROP TABLE IF EXISTS bajaj1;

CREATE TABLE bajaj1 AS
SELECT
    date,
    close_price,

    CASE
        WHEN rn >= 20
        THEN ROUND(ma20_raw, 2)
        ELSE NULL
    END AS ma20,

    CASE
        WHEN rn >= 50
        THEN ROUND(ma50_raw, 2)
        ELSE NULL
    END AS ma50

FROM
(
    SELECT
        date,
        close_price,

        ROW_NUMBER() OVER (
            ORDER BY date
        ) AS rn,

        AVG(close_price) OVER (
            ORDER BY date
            ROWS BETWEEN 19 PRECEDING AND CURRENT ROW
        ) AS ma20_raw,

        AVG(close_price) OVER (
            ORDER BY date
            ROWS BETWEEN 49 PRECEDING AND CURRENT ROW
        ) AS ma50_raw

    FROM bajaj_auto
) AS moving_avg
ORDER BY date;

select * from bajaj1
order by date 
limit 55;

SELECT
    date,
    close_price,
    ma20,
    ma50
FROM bajaj1
WHERE ma20 IS NOT NULL
   OR ma50 IS NOT NULL
ORDER BY date
LIMIT 5;

-- Conclusion:
-- MA20 starts from the 20th trading day because a complete
-- 20-day window is required.
-- MA50 remains NULL until the 50th trading day because a
-- complete 50-day window is required.
-- This confirms that partial moving-average windows are excluded.


-- =====================================================
-- TASK 6: MASTER TABLE
-- Step 8A: Check that trading dates align
-- =====================================================

SELECT COUNT(*) AS matching_dates
FROM bajaj_auto b
JOIN tcs t
    ON t.date = b.date;
    
    
-- =====================================================
-- Step 8B: Create master_table
-- =====================================================

DROP TABLE IF EXISTS master_table;

CREATE TABLE master_table AS

SELECT
    b.date,
    b.close_price AS bajaj,
    t.close_price AS tcs,
    tv.close_price AS tvs,
    i.close_price AS infosys,
    e.close_price AS eicher,
    h.close_price AS hero
	
FROM bajaj_auto b

JOIN tcs t
    ON t.date = b.date

JOIN tvs_motors tv
    ON tv.date = b.date

JOIN infosys i
    ON i.date = b.date

JOIN eicher_motors e
    ON e.date = b.date

JOIN hero_motocorp h
    ON h.date = b.date;
    
    
    -- =====================================================
-- Step 8C: Validate master_table(rows & NULLs)
-- =====================================================

SELECT *
FROM master_table
LIMIT 5;


SELECT
    COUNT(*) AS total_rows,
    COUNT(*) - COUNT(bajaj) AS null_bajaj,
    COUNT(*) - COUNT(tcs) AS null_tcs,
    COUNT(*) - COUNT(tvs) AS null_tvs,
    COUNT(*) - COUNT(infosys) AS null_infosys,
    COUNT(*) - COUNT(eicher) AS null_eicher,
    COUNT(*) - COUNT(hero) AS null_hero
FROM master_table;


SELECT *
FROM master_table
WHERE date = '2018-07-31';


-- =====================================================
-- TASK 7: GOLDEN CROSS SIGNALS
-- Create bajaj2
-- =====================================================
-- Compatibility note: the LAG calculation is placed inside the FROM subquery
-- to avoid a CREATE TABLE ... AS WITH parser issue in MySQL Workbench.

DROP TABLE IF EXISTS bajaj2;

CREATE TABLE bajaj2 AS
SELECT
    date,
    close_price,

    CASE

        WHEN ma20 IS NULL
          OR ma50 IS NULL
          OR prev_ma20 IS NULL
          OR prev_ma50 IS NULL
        THEN 'Hold'

        WHEN ma20 > ma50
          AND prev_ma20 <= prev_ma50
        THEN 'Buy'

        WHEN ma20 < ma50
          AND prev_ma20 >= prev_ma50
        THEN 'Sell'

        ELSE 'Hold'

    END AS `signal`

FROM
(
    SELECT
        date,
        close_price,
        ma20,
        ma50,

        LAG(ma20) OVER (ORDER BY date) AS prev_ma20,
        LAG(ma50) OVER (ORDER BY date) AS prev_ma50

    FROM bajaj1
) AS lagged;

-- =====================================================
-- TASK 7A: VALIDATE BAJAJ2
-- Check total number of rows
-- =====================================================

SELECT COUNT(*) AS total_rows
FROM bajaj2;


-- =====================================================
-- TASK 7B: CHECK FIRST BUY SIGNAL
-- =====================================================

SELECT
    date,
    close_price,
    `signal`
FROM bajaj2
WHERE `signal` = 'Buy'
ORDER BY date
LIMIT 1;

-- =====================================================
-- TASK 7C: CHECK FIRST SELL SIGNAL
-- =====================================================

SELECT
    date,
    close_price,
    `signal`
FROM bajaj2
WHERE `signal` = 'Sell'
ORDER BY date
LIMIT 1;


-- =====================================================
-- TASK 8: CHECK SIGNAL COUNTS
-- =====================================================

SELECT
    `signal`,
    COUNT(*) AS signal_days
FROM bajaj2
GROUP BY `signal`
ORDER BY `signal`;

-- =====================================================
-- TASK 8: CONCLUSION
-- =====================================================
-- Bajaj Auto generated 12 Buy signals and 11 Sell signals
-- based on MA20/MA50 crossover analysis. The remaining
-- 866 trading days were classified as Hold.
-- The Buy and Sell signals differ by only one, which is
-- consistent with alternating crossover events.


-- =====================================================
-- TASK 9A: SIGNAL ON A GIVEN DAY
-- Check known Buy signal
-- =====================================================

SELECT
    `signal`
FROM bajaj2
WHERE date = '2015-05-18';

-- =====================================================
-- TASK 9B: CHECK KNOWN HOLD SIGNAL
-- =====================================================

SELECT
    `signal`
FROM bajaj2
WHERE date = '2016-01-04';

-- =====================================================
-- TASK 9C: SIGNAL FOR 2018-06-21
-- =====================================================

SELECT
    `signal`
FROM bajaj2
WHERE date = '2018-06-21';

-- =====================================================
-- TASK 9D: CREATE BAJAJ SIGNAL FUNCTION
-- =====================================================

DROP FUNCTION IF EXISTS bajaj_signal;

DELIMITER $$

CREATE FUNCTION bajaj_signal(d DATE)
RETURNS VARCHAR(4)
DETERMINISTIC
READS SQL DATA
BEGIN

    DECLARE s VARCHAR(4);

    SELECT `signal`
    INTO s
    FROM bajaj2
    WHERE date = d;

    RETURN s;

END $$

DELIMITER ;

-- =====================================================
-- TASK 9E: TEST BAJAJ SIGNAL FUNCTION
-- =====================================================

SELECT bajaj_signal('2015-05-18') AS signal_result;

-- =====================================================
-- TASK 9F: TEST FUNCTION WITH HOLD SIGNAL
-- =====================================================

SELECT bajaj_signal('2016-01-04') AS signal_result;


-- =====================================================
-- TASK 10A: ALL SIX STOCKS
-- Create prices CTE
-- =====================================================

WITH prices AS
(
    SELECT
        'Bajaj Auto' AS stock,
        date,
        close_price
    FROM bajaj_auto

    UNION ALL

    SELECT
        'Eicher Motors' AS stock,
        date,
        close_price
    FROM eicher_motors

    UNION ALL

    SELECT
        'Hero Motocorp' AS stock,
        date,
        close_price
    FROM hero_motocorp

    UNION ALL

    SELECT
        'Infosys' AS stock,
        date,
        close_price
    FROM infosys

    UNION ALL

    SELECT
        'TCS' AS stock,
        date,
        close_price
    FROM tcs

    UNION ALL

    SELECT
        'TVS Motors' AS stock,
        date,
        close_price
    FROM tvs_motors
)

SELECT *
FROM prices
ORDER BY stock, date
LIMIT 20;

-- =====================================================
-- TASK 10B: MOVING AVERAGES FOR ALL SIX STOCKS
-- Calculate MA20 and MA50 using PARTITION BY stock
-- =====================================================

WITH prices AS
(
    SELECT
        'Bajaj Auto' AS stock,
        date,
        close_price
    FROM bajaj_auto

    UNION ALL

    SELECT
        'Eicher Motors' AS stock,
        date,
        close_price
    FROM eicher_motors

    UNION ALL

    SELECT
        'Hero Motocorp' AS stock,
        date,
        close_price
    FROM hero_motocorp

    UNION ALL

    SELECT
        'Infosys' AS stock,
        date,
        close_price
    FROM infosys

    UNION ALL

    SELECT
        'TCS' AS stock,
        date,
        close_price
    FROM tcs

    UNION ALL

    SELECT
        'TVS Motors' AS stock,
        date,
        close_price
    FROM tvs_motors
),

ma AS
(
    SELECT
        stock,
        date,
        close_price,

        CASE
            WHEN ROW_NUMBER() OVER (
                PARTITION BY stock
                ORDER BY date
            ) >= 20
            THEN AVG(close_price) OVER (
                PARTITION BY stock
                ORDER BY date
                ROWS BETWEEN 19 PRECEDING AND CURRENT ROW
            )
        END AS ma20,

        CASE
            WHEN ROW_NUMBER() OVER (
                PARTITION BY stock
                ORDER BY date
            ) >= 50
            THEN AVG(close_price) OVER (
                PARTITION BY stock
                ORDER BY date
                ROWS BETWEEN 49 PRECEDING AND CURRENT ROW
            )
        END AS ma50

    FROM prices
)

SELECT *
FROM ma
ORDER BY stock, date
LIMIT 20;

-- =====================================================
-- TASK 10C: PREVIOUS MOVING AVERAGES
-- Calculate previous MA20 and MA50 for each stock
-- =====================================================

WITH prices AS
(
    SELECT
        'Bajaj Auto' AS stock,
        date,
        close_price
    FROM bajaj_auto

    UNION ALL

    SELECT
        'Eicher Motors' AS stock,
        date,
        close_price
    FROM eicher_motors

    UNION ALL

    SELECT
        'Hero Motocorp' AS stock,
        date,
        close_price
    FROM hero_motocorp

    UNION ALL

    SELECT
        'Infosys' AS stock,
        date,
        close_price
    FROM infosys

    UNION ALL

    SELECT
        'TCS' AS stock,
        date,
        close_price
    FROM tcs

    UNION ALL

    SELECT
        'TVS Motors' AS stock,
        date,
        close_price
    FROM tvs_motors
),

ma AS
(
    SELECT
        stock,
        date,
        close_price,

        CASE
            WHEN ROW_NUMBER() OVER (
                PARTITION BY stock
                ORDER BY date
            ) >= 20
            THEN AVG(close_price) OVER (
                PARTITION BY stock
                ORDER BY date
                ROWS BETWEEN 19 PRECEDING AND CURRENT ROW
            )
        END AS ma20,

        CASE
            WHEN ROW_NUMBER() OVER (
                PARTITION BY stock
                ORDER BY date
            ) >= 50
            THEN AVG(close_price) OVER (
                PARTITION BY stock
                ORDER BY date
                ROWS BETWEEN 49 PRECEDING AND CURRENT ROW
            )
        END AS ma50

    FROM prices
),

lagged AS
(
    SELECT
        stock,
        date,
        close_price,
        ma20,
        ma50,

        LAG(ma20) OVER (
            PARTITION BY stock
            ORDER BY date
        ) AS prev_ma20,

        LAG(ma50) OVER (
            PARTITION BY stock
            ORDER BY date
        ) AS prev_ma50

    FROM ma
)

SELECT *
FROM lagged
ORDER BY stock, date
LIMIT 20;


-- =====================================================
-- TASK 10C-1: VERIFY LAG VALUES AROUND MA50 START
-- =====================================================

WITH prices AS
(
    SELECT 'Bajaj Auto' AS stock, date, close_price FROM bajaj_auto
    UNION ALL
    SELECT 'Eicher Motors', date, close_price FROM eicher_motors
    UNION ALL
    SELECT 'Hero Motocorp', date, close_price FROM hero_motocorp
    UNION ALL
    SELECT 'Infosys', date, close_price FROM infosys
    UNION ALL
    SELECT 'TCS', date, close_price FROM tcs
    UNION ALL
    SELECT 'TVS Motors', date, close_price FROM tvs_motors
),

ma AS
(
    SELECT
        stock,
        date,
        close_price,

        CASE
            WHEN ROW_NUMBER() OVER (
                PARTITION BY stock
                ORDER BY date
            ) >= 20
            THEN AVG(close_price) OVER (
                PARTITION BY stock
                ORDER BY date
                ROWS BETWEEN 19 PRECEDING AND CURRENT ROW
            )
        END AS ma20,

        CASE
            WHEN ROW_NUMBER() OVER (
                PARTITION BY stock
                ORDER BY date
            ) >= 50
            THEN AVG(close_price) OVER (
                PARTITION BY stock
                ORDER BY date
                ROWS BETWEEN 49 PRECEDING AND CURRENT ROW
            )
        END AS ma50

    FROM prices
),

lagged AS
(
    SELECT
        stock,
        date,
        close_price,
        ma20,
        ma50,

        LAG(ma20) OVER (
            PARTITION BY stock
            ORDER BY date
        ) AS prev_ma20,

        LAG(ma50) OVER (
            PARTITION BY stock
            ORDER BY date
        ) AS prev_ma50

    FROM ma
)

SELECT *
FROM lagged
WHERE stock = 'Bajaj Auto'
ORDER BY date
LIMIT 55 OFFSET 45;

-- =====================================================
-- TASK 10D: BUY / SELL / HOLD SIGNALS
-- Generate signals for all six stocks
-- =====================================================

WITH prices AS
(
    SELECT 'Bajaj Auto' AS stock, date, close_price
    FROM bajaj_auto

    UNION ALL

    SELECT 'Eicher Motors', date, close_price
    FROM eicher_motors

    UNION ALL

    SELECT 'Hero Motocorp', date, close_price
    FROM hero_motocorp

    UNION ALL

    SELECT 'Infosys', date, close_price
    FROM infosys

    UNION ALL

    SELECT 'TCS', date, close_price
    FROM tcs

    UNION ALL

    SELECT 'TVS Motors', date, close_price
    FROM tvs_motors
),

ma AS
(
    SELECT
        stock,
        date,
        close_price,

        CASE
            WHEN ROW_NUMBER() OVER (
                PARTITION BY stock
                ORDER BY date
            ) >= 20
            THEN AVG(close_price) OVER (
                PARTITION BY stock
                ORDER BY date
                ROWS BETWEEN 19 PRECEDING AND CURRENT ROW
            )
        END AS ma20,

        CASE
            WHEN ROW_NUMBER() OVER (
                PARTITION BY stock
                ORDER BY date
            ) >= 50
            THEN AVG(close_price) OVER (
                PARTITION BY stock
                ORDER BY date
                ROWS BETWEEN 49 PRECEDING AND CURRENT ROW
            )
        END AS ma50

    FROM prices
),

lagged AS
(
    SELECT
        stock,
        date,
        close_price,
        ma20,
        ma50,

        LAG(ma20) OVER (
            PARTITION BY stock
            ORDER BY date
        ) AS prev_ma20,

        LAG(ma50) OVER (
            PARTITION BY stock
            ORDER BY date
        ) AS prev_ma50

    FROM ma
),

sig AS
(
    SELECT
        stock,
        date,
        close_price,

        CASE
            WHEN ma20 IS NULL
              OR ma50 IS NULL
              OR prev_ma20 IS NULL
              OR prev_ma50 IS NULL
            THEN 'Hold'

            WHEN ma20 > ma50
              AND prev_ma20 <= prev_ma50
            THEN 'Buy'

            WHEN ma20 < ma50
              AND prev_ma20 >= prev_ma50
            THEN 'Sell'

            ELSE 'Hold'
        END AS `signal`

    FROM lagged
)

SELECT *
FROM sig
ORDER BY stock, date
LIMIT 20;


-- =====================================================
-- TASK 10E: FIND LATEST BUY/SELL SIGNAL
-- Get the most recent non-Hold signal for each stock
-- =====================================================

WITH prices AS
(
    SELECT 'Bajaj Auto' AS stock, date, close_price
    FROM bajaj_auto

    UNION ALL

    SELECT 'Eicher Motors', date, close_price
    FROM eicher_motors

    UNION ALL

    SELECT 'Hero Motocorp', date, close_price
    FROM hero_motocorp

    UNION ALL

    SELECT 'Infosys', date, close_price
    FROM infosys

    UNION ALL

    SELECT 'TCS', date, close_price
    FROM tcs

    UNION ALL

    SELECT 'TVS Motors', date, close_price
    FROM tvs_motors
),

ma AS
(
    SELECT
        stock,
        date,
        close_price,

        CASE
            WHEN ROW_NUMBER() OVER (
                PARTITION BY stock
                ORDER BY date
            ) >= 20
            THEN AVG(close_price) OVER (
                PARTITION BY stock
                ORDER BY date
                ROWS BETWEEN 19 PRECEDING AND CURRENT ROW
            )
        END AS ma20,

        CASE
            WHEN ROW_NUMBER() OVER (
                PARTITION BY stock
                ORDER BY date
            ) >= 50
            THEN AVG(close_price) OVER (
                PARTITION BY stock
                ORDER BY date
                ROWS BETWEEN 49 PRECEDING AND CURRENT ROW
            )
        END AS ma50

    FROM prices
),

lagged AS
(
    SELECT
        stock,
        date,
        close_price,
        ma20,
        ma50,

        LAG(ma20) OVER (
            PARTITION BY stock
            ORDER BY date
        ) AS prev_ma20,

        LAG(ma50) OVER (
            PARTITION BY stock
            ORDER BY date
        ) AS prev_ma50

    FROM ma
),

sig AS
(
    SELECT
        stock,
        date,
        close_price,

        CASE
            WHEN ma20 IS NULL
              OR ma50 IS NULL
              OR prev_ma20 IS NULL
              OR prev_ma50 IS NULL
            THEN 'Hold'

            WHEN ma20 > ma50
              AND prev_ma20 <= prev_ma50
            THEN 'Buy'

            WHEN ma20 < ma50
              AND prev_ma20 >= prev_ma50
            THEN 'Sell'

            ELSE 'Hold'
        END AS `signal`

    FROM lagged
),

latest AS
(
    SELECT
        stock,
        date,
        `signal`,

        ROW_NUMBER() OVER (
            PARTITION BY stock
            ORDER BY date DESC
        ) AS rn

    FROM sig

    WHERE `signal` <> 'Hold'
)

SELECT *
FROM latest
WHERE rn = 1
ORDER BY stock;


/* ============================================================
   TASK 10F — FINAL SIGNAL SUMMARY FOR ALL SIX STOCKS
   ============================================================ */

WITH prices AS
(
    /* STEP 1 — Combine all six stock tables */

    SELECT date, close_price, 'Bajaj Auto' AS stock
    FROM bajaj_auto

    UNION ALL

    SELECT date, close_price, 'Eicher Motors' AS stock
    FROM eicher_motors

    UNION ALL

    SELECT date, close_price, 'Hero Motocorp' AS stock
    FROM hero_motocorp

    UNION ALL

    SELECT date, close_price, 'Infosys' AS stock
    FROM infosys

    UNION ALL

    SELECT date, close_price, 'TCS' AS stock
    FROM tcs

    UNION ALL

    SELECT date, close_price, 'TVS Motors' AS stock
    FROM tvs_motors
),

ma AS
(
    /* STEP 2 — Calculate MA20 and MA50 */

    SELECT
        stock,
        date,
        close_price,

        CASE
            WHEN ROW_NUMBER() OVER (
                PARTITION BY stock
                ORDER BY date
            ) >= 20
            THEN AVG(close_price) OVER (
                PARTITION BY stock
                ORDER BY date
                ROWS BETWEEN 19 PRECEDING AND CURRENT ROW
            )
        END AS ma20,

        CASE
            WHEN ROW_NUMBER() OVER (
                PARTITION BY stock
                ORDER BY date
            ) >= 50
            THEN AVG(close_price) OVER (
                PARTITION BY stock
                ORDER BY date
                ROWS BETWEEN 49 PRECEDING AND CURRENT ROW
            )
        END AS ma50

    FROM prices
),

lagged AS
(
    /* STEP 3 — Get previous day's MA20 and MA50 */

    SELECT
        stock,
        date,
        close_price,
        ma20,
        ma50,

        LAG(ma20) OVER (
            PARTITION BY stock
            ORDER BY date
        ) AS prev_ma20,

        LAG(ma50) OVER (
            PARTITION BY stock
            ORDER BY date
        ) AS prev_ma50

    FROM ma
),

sig AS
(
    /* STEP 4 — Generate Buy / Sell / Hold signals */

    SELECT
        stock,
        date,
        close_price,
        ma20,
        ma50,

        CASE
            WHEN prev_ma20 IS NOT NULL
                 AND prev_ma50 IS NOT NULL
                 AND prev_ma20 <= prev_ma50
                 AND ma20 > ma50
            THEN 'Buy'

            WHEN prev_ma20 IS NOT NULL
                 AND prev_ma50 IS NOT NULL
                 AND prev_ma20 >= prev_ma50
                 AND ma20 < ma50
            THEN 'Sell'

            ELSE 'Hold'
        END AS `signal`

    FROM lagged
),

latest AS
(
    /* STEP 5 — Find latest non-Hold signal */

    SELECT
        stock,
        date,
        `signal`,

        ROW_NUMBER() OVER (
            PARTITION BY stock
            ORDER BY date DESC
        ) AS rn

    FROM sig

    WHERE `signal` <> 'Hold'
)

/* STEP 6 — Final Task 10 Summary
   The internal summary keeps Hold counts for validation, but the
   final displayed output matches the guide exactly: 5 columns. */

, summary AS
(
    SELECT
        s.stock,

        SUM(CASE WHEN s.`signal` = 'Buy' THEN 1 ELSE 0 END) AS buys,
        SUM(CASE WHEN s.`signal` = 'Sell' THEN 1 ELSE 0 END) AS sells,
        SUM(CASE WHEN s.`signal` = 'Hold' THEN 1 ELSE 0 END) AS holds,

        l.date AS last_signal_date,
        l.`signal` AS last_signal

    FROM sig s

    JOIN latest l
        ON s.stock = l.stock
        AND l.rn = 1

    GROUP BY
        s.stock,
        l.date,
        l.`signal`
)

SELECT
    stock,
    buys,
    sells,
    last_signal_date,
    last_signal
FROM summary
ORDER BY stock;

-- Hold counts retained for validation: 866, 876, 871, 871, 864, 873.
-- Total Hold days across all six stocks = 5,221.

-- Conclusion:
-- Across all six stocks, there were 56 Buy signals and 57 Sell signals.
-- Most trading days were classified as Hold.
-- The latest non-Hold signal was Buy for Bajaj Auto and Infosys,
-- while Eicher Motors, Hero Motocorp, TCS and TVS Motors had Sell signals.

/* ============================================================
   TASK 11 — STOCK PERFORMANCE ANALYSIS
   First Close vs Last Close
   ============================================================ */

WITH prices AS
(
    /* --------------------------------------------------------
       STEP 1 — Combine all six stocks
       -------------------------------------------------------- */

    SELECT
        date,
        close_price,
        'Bajaj Auto' AS stock
    FROM bajaj_auto

    UNION ALL

    SELECT
        date,
        close_price,
        'Eicher Motors' AS stock
    FROM eicher_motors

    UNION ALL

    SELECT
        date,
        close_price,
        'Hero Motocorp' AS stock
    FROM hero_motocorp

    UNION ALL

    SELECT
        date,
        close_price,
        'Infosys' AS stock
    FROM infosys

    UNION ALL

    SELECT
        date,
        close_price,
        'TCS' AS stock
    FROM tcs

    UNION ALL

    SELECT
        date,
        close_price,
        'TVS Motors' AS stock
    FROM tvs_motors
),

ends AS
(
    /* --------------------------------------------------------
       STEP 2 — Find first and last trading date
       -------------------------------------------------------- */

    SELECT
        stock,
        MIN(date) AS first_date,
        MAX(date) AS last_date
    FROM prices
    GROUP BY stock
)

/* ------------------------------------------------------------
   STEP 3 — Get prices on first and last trading dates
   ------------------------------------------------------------ */

SELECT
    e.stock,

    first_price.close_price AS first_close,

    last_price.close_price AS last_close,

    ROUND(
        (
            (last_price.close_price - first_price.close_price)
            / first_price.close_price
        ) * 100,
        1
    ) AS pct_change

FROM ends e

JOIN prices first_price
    ON e.stock = first_price.stock
    AND e.first_date = first_price.date

JOIN prices last_price
    ON e.stock = last_price.stock
    AND e.last_date = last_price.date

ORDER BY
    pct_change DESC;
    
    -- Conclusion:
-- Based on unadjusted closing prices, TVS Motors recorded the highest
-- overall increase of 86.9%, followed by Eicher Motors at 82.6%.
-- Bajaj Auto and Hero Motocorp showed moderate growth.
-- TCS and Infosys appeared to decline by 23.8% and 30.9%.
-- These two results are later investigated and adjusted for identified
-- price-level events in Task 13.


/* ============================================================
   TASK 12 — WORST TRADING DAY FOR EACH STOCK
   ============================================================ */

WITH prices AS
(
    /* --------------------------------------------------------
       STEP 1 — Combine all six stock tables
       -------------------------------------------------------- */

    SELECT
        date,
        close_price,
        'Bajaj Auto' AS stock
    FROM bajaj_auto

    UNION ALL

    SELECT
        date,
        close_price,
        'Eicher Motors' AS stock
    FROM eicher_motors

    UNION ALL

    SELECT
        date,
        close_price,
        'Hero Motocorp' AS stock
    FROM hero_motocorp

    UNION ALL

    SELECT
        date,
        close_price,
        'Infosys' AS stock
    FROM infosys

    UNION ALL

    SELECT
        date,
        close_price,
        'TCS' AS stock
    FROM tcs

    UNION ALL

    SELECT
        date,
        close_price,
        'TVS Motors' AS stock
    FROM tvs_motors
),

daily_change AS
(
    /* --------------------------------------------------------
       STEP 2 — Get previous trading day's closing price
       -------------------------------------------------------- */

    SELECT
        stock,
        date,
        close_price,

        LAG(close_price) OVER
        (
            PARTITION BY stock
            ORDER BY date
        ) AS previous_close

    FROM prices
),

daily_return AS
(
    /* --------------------------------------------------------
       STEP 3 — Calculate day-to-day percentage change
       -------------------------------------------------------- */

    SELECT
        stock,
        date,
        close_price,
        previous_close,

        (
            (close_price - previous_close)
            / previous_close
        ) * 100 AS daily_pct_change

    FROM daily_change

    WHERE previous_close IS NOT NULL
),

ranked AS
(
    /* --------------------------------------------------------
       STEP 4 — Rank trading days from worst to best
       -------------------------------------------------------- */

    SELECT
        stock,
        date,
        close_price,
        previous_close,
        daily_pct_change,

        ROW_NUMBER() OVER
        (
            PARTITION BY stock
            ORDER BY daily_pct_change ASC
        ) AS rn

    FROM daily_return
)

/* ------------------------------------------------------------
   STEP 5 — Select the worst trading day for each stock
   ------------------------------------------------------------ */

SELECT
    stock,
    date,
    close_price,
    ROUND(daily_pct_change, 1) AS pct_move

FROM ranked

WHERE rn = 1

ORDER BY
    daily_pct_change ASC;
    
 --   result shows exactly that:
-- Normal range: Hero, Bajaj, Eicher, TVS → roughly -6% to -10%
-- Unusual: TCS -50.40%
-- Unusual: Infosys -49.86%

/* ============================================================
   TASK 12A — INVESTIGATE TCS PRICE MOVEMENT
   ============================================================ */

SELECT
    date,
    close_price
FROM tcs
WHERE date BETWEEN '2018-05-29' AND '2018-06-04'
ORDER BY date;

/* ============================================================
   TASK 12B — INVESTIGATE INFOSYS PRICE MOVEMENT
   Event window: 2015-06-11 to 2015-06-17
   ============================================================ */

SELECT
    date,
    close_price
FROM infosys
WHERE date BETWEEN '2015-06-11' AND '2015-06-17'
ORDER BY date;

/* ============================================================
   TASK 13 — ADJUST TCS AND INFOSYS HISTORICAL PRICES
   ============================================================
   Purpose:
   Adjust historical prices for the identified 1:1 bonus-style
   price changes and calculate the adjusted overall return.
   ============================================================ */

WITH adjusted AS
(
    /* --------------------------------------------------------
       STEP 1 — Adjust TCS prices
       Prices before 2018-05-31 are divided by 2.
       Prices on and after 2018-05-31 remain unchanged.
       -------------------------------------------------------- */

    SELECT
        'TCS' AS stock,
        date,

        CASE
            WHEN date < '2018-05-31'
            THEN close_price / 2
            ELSE close_price
        END AS adj_close

    FROM tcs

    UNION ALL

    /* --------------------------------------------------------
       STEP 2 — Adjust Infosys prices
       Prices before 2015-06-15 are divided by 2.
       Prices on and after 2015-06-15 remain unchanged.
       -------------------------------------------------------- */

    SELECT
        'Infosys' AS stock,
        date,

        CASE
            WHEN date < '2015-06-15'
            THEN close_price / 2
            ELSE close_price
        END AS adj_close

    FROM infosys
)

/* ------------------------------------------------------------
   STEP 3 — Calculate adjusted percentage change
   ------------------------------------------------------------ */

SELECT
    stock,

    ROUND(
        100.0 *
        (
            MAX(
                CASE
                    WHEN date = '2018-07-31'
                    THEN adj_close
                END
            )
            /
            MAX(
                CASE
                    WHEN date = '2015-01-01'
                    THEN adj_close
                END
            )
            - 1
        ),
        1
    ) AS adjusted_pct_change

FROM adjusted

GROUP BY stock

ORDER BY stock;

-- Conclusion:
-- After adjusting the historical prices for the identified 1:1
-- bonus-related price changes, TCS and Infosys show positive
-- overall performance instead of the apparent declines in the
-- unadjusted data.
-- TCS increased by 52.4% and Infosys increased by 38.2%.
-- This shows that corporate-action price adjustments are important
-- when evaluating historical stock performance and comparing
-- returns across the analysis period.


/* ============================================================
   OPTIONAL EXTENSION — SIGNAL FLIPPING / WHIPSAW ANALYSIS
   ============================================================
   Purpose:
   Identify Buy/Sell signals that reverse within 30 days.
   These are potential short-term whipsaws.
   ============================================================ */

WITH prices AS
(
    /* --------------------------------------------------------
       STEP 1 — Combine all six stocks
       -------------------------------------------------------- */

    SELECT
        date,
        close_price,
        'Bajaj Auto' AS stock
    FROM bajaj_auto

    UNION ALL

    SELECT
        date,
        close_price,
        'Eicher Motors' AS stock
    FROM eicher_motors

    UNION ALL

    SELECT
        date,
        close_price,
        'Hero Motocorp' AS stock
    FROM hero_motocorp

    UNION ALL

    SELECT
        date,
        close_price,
        'Infosys' AS stock
    FROM infosys

    UNION ALL

    SELECT
        date,
        close_price,
        'TCS' AS stock
    FROM tcs

    UNION ALL

    SELECT
        date,
        close_price,
        'TVS Motors' AS stock
    FROM tvs_motors
),

ma AS
(
    /* --------------------------------------------------------
       STEP 2 — Calculate MA20 and MA50
       -------------------------------------------------------- */

    SELECT
        stock,
        date,
        close_price,

        CASE
            WHEN ROW_NUMBER() OVER (
                PARTITION BY stock
                ORDER BY date
            ) >= 20
            THEN AVG(close_price) OVER (
                PARTITION BY stock
                ORDER BY date
                ROWS BETWEEN 19 PRECEDING AND CURRENT ROW
            )
        END AS ma20,

        CASE
            WHEN ROW_NUMBER() OVER (
                PARTITION BY stock
                ORDER BY date
            ) >= 50
            THEN AVG(close_price) OVER (
                PARTITION BY stock
                ORDER BY date
                ROWS BETWEEN 49 PRECEDING AND CURRENT ROW
            )
        END AS ma50

    FROM prices
),

lagged AS
(
    /* --------------------------------------------------------
       STEP 3 — Get previous day's moving averages
       -------------------------------------------------------- */

    SELECT
        stock,
        date,
        close_price,
        ma20,
        ma50,

        LAG(ma20) OVER (
            PARTITION BY stock
            ORDER BY date
        ) AS prev_ma20,

        LAG(ma50) OVER (
            PARTITION BY stock
            ORDER BY date
        ) AS prev_ma50

    FROM ma
),

signals AS
(
    /* --------------------------------------------------------
       STEP 4 — Generate Buy / Sell / Hold signals
       -------------------------------------------------------- */

    SELECT
        stock,
        date,
        close_price,

        CASE
            WHEN prev_ma20 IS NOT NULL
                 AND prev_ma50 IS NOT NULL
                 AND prev_ma20 <= prev_ma50
                 AND ma20 > ma50
            THEN 'Buy'

            WHEN prev_ma20 IS NOT NULL
                 AND prev_ma50 IS NOT NULL
                 AND prev_ma20 >= prev_ma50
                 AND ma20 < ma50
            THEN 'Sell'

            ELSE 'Hold'
        END AS `signal`

    FROM lagged
),

non_hold AS
(
    /* --------------------------------------------------------
       STEP 5 — Keep only Buy and Sell signals
       -------------------------------------------------------- */

    SELECT
        stock,
        date,
        close_price,
        `signal`,

        LAG(date) OVER (
            PARTITION BY stock
            ORDER BY date
        ) AS previous_signal_date,

        LAG(`signal`) OVER (
            PARTITION BY stock
            ORDER BY date
        ) AS previous_signal

    FROM signals

    WHERE `signal` <> 'Hold'
)

/* ------------------------------------------------------------
   STEP 6 — Find Buy/Sell reversals within 30 days
   ------------------------------------------------------------ */

SELECT
    stock,
    previous_signal_date,
    previous_signal,
    date AS current_signal_date,
    `signal` AS current_signal,

    DATEDIFF(
        date,
        previous_signal_date
    ) AS days_between_signals

FROM non_hold

WHERE previous_signal IS NOT NULL

  AND previous_signal <> `signal`

  AND DATEDIFF(
        date,
        previous_signal_date
      ) <= 30

ORDER BY
    stock,
    current_signal_date;
    
    
    /* ============================================================
   OPTIONAL EXTENSION — BUY→SELL REVERSAL IMPACT
   Purpose:
   Measure gross price movement only for Buy → Sell reversals
   within 30 days. This matches a normal long-only interpretation.
   Sell → Buy reversals are not treated as short trades.
   ============================================================ */

WITH prices AS
(
    SELECT date, close_price, 'Bajaj Auto' AS stock FROM bajaj_auto
    UNION ALL SELECT date, close_price, 'Eicher Motors' FROM eicher_motors
    UNION ALL SELECT date, close_price, 'Hero Motocorp' FROM hero_motocorp
    UNION ALL SELECT date, close_price, 'Infosys' FROM infosys
    UNION ALL SELECT date, close_price, 'TCS' FROM tcs
    UNION ALL SELECT date, close_price, 'TVS Motors' FROM tvs_motors
),
ma AS
(
    SELECT
        stock, date, close_price,
        CASE WHEN ROW_NUMBER() OVER (PARTITION BY stock ORDER BY date) >= 20
             THEN AVG(close_price) OVER (PARTITION BY stock ORDER BY date ROWS BETWEEN 19 PRECEDING AND CURRENT ROW) END AS ma20,
        CASE WHEN ROW_NUMBER() OVER (PARTITION BY stock ORDER BY date) >= 50
             THEN AVG(close_price) OVER (PARTITION BY stock ORDER BY date ROWS BETWEEN 49 PRECEDING AND CURRENT ROW) END AS ma50
    FROM prices
),
lagged AS
(
    SELECT
        stock, date, close_price, ma20, ma50,
        LAG(ma20) OVER (PARTITION BY stock ORDER BY date) AS prev_ma20,
        LAG(ma50) OVER (PARTITION BY stock ORDER BY date) AS prev_ma50
    FROM ma
),
signals AS
(
    SELECT
        stock, date, close_price,
        CASE
            WHEN prev_ma20 IS NOT NULL AND prev_ma50 IS NOT NULL
                 AND prev_ma20 <= prev_ma50 AND ma20 > ma50 THEN 'Buy'
            WHEN prev_ma20 IS NOT NULL AND prev_ma50 IS NOT NULL
                 AND prev_ma20 >= prev_ma50 AND ma20 < ma50 THEN 'Sell'
            ELSE 'Hold'
        END AS `signal`
    FROM lagged
),
non_hold AS
(
    SELECT
        stock, date, close_price, `signal`,
        LAG(date) OVER (PARTITION BY stock ORDER BY date) AS previous_signal_date,
        LAG(close_price) OVER (PARTITION BY stock ORDER BY date) AS previous_signal_close,
        LAG(`signal`) OVER (PARTITION BY stock ORDER BY date) AS previous_signal
    FROM signals
    WHERE `signal` <> 'Hold'
),
reversals AS
(
    SELECT
        stock, previous_signal_date, previous_signal, previous_signal_close,
        date AS current_signal_date, `signal` AS current_signal, close_price AS current_signal_close,
        DATEDIFF(date, previous_signal_date) AS days_between_signals
    FROM non_hold
    WHERE previous_signal = 'Buy'
      AND `signal` = 'Sell'
      AND DATEDIFF(date, previous_signal_date) <= 30
)
 ,
returns AS
(
    SELECT
        stock,
        previous_signal_date,
        current_signal_date,
        days_between_signals,
        previous_signal_close,
        current_signal_close,
        ((current_signal_close - previous_signal_close) / previous_signal_close) * 100 AS gross_return_pct
    FROM reversals
)

SELECT
    stock,
    previous_signal_date AS buy_date,
    current_signal_date AS sell_date,
    days_between_signals,
    ROUND(previous_signal_close, 2) AS buy_close,
    ROUND(current_signal_close, 2) AS sell_close,
    ROUND(gross_return_pct, 2) AS gross_return_pct,
    COUNT(*) OVER () AS total_buy_sell_reversals,
    SUM(CASE WHEN gross_return_pct < 0 THEN 1 ELSE 0 END) OVER () AS losing_reversals,
    ROUND(AVG(gross_return_pct) OVER (), 2) AS average_gross_return_pct
FROM returns
ORDER BY stock, sell_date;

-- Conclusion:
-- There were 10 Buy → Sell reversals within 30 days.
-- 9 of the 10 were loss-making on a long-only interpretation,
-- with an average gross return of approximately -5.05%.
-- Sell → Buy reversals are not treated as short trades because
-- the project does not define a short-selling strategy.
-- Brokerage, taxes, slippage and position sizing are not included,
-- so these are gross price movements rather than realised P&L.

