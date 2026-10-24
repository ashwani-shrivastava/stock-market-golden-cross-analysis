-- =====================================================
-- STOCK MARKET ANALYSIS PROJECT — DATA LOAD / SETUP
-- =====================================================
-- Run this file ONCE before Stock_market_analysis(1).sql.
-- Update the CSV paths if your files are stored elsewhere.
-- MySQL Workbench may require LOCAL INFILE to be enabled.
-- =====================================================

CREATE DATABASE IF NOT EXISTS stock_market_analysis;
USE stock_market_analysis;

DROP TABLE IF EXISTS bajaj_auto;
DROP TABLE IF EXISTS eicher_motors;
DROP TABLE IF EXISTS hero_motocorp;
DROP TABLE IF EXISTS infosys;
DROP TABLE IF EXISTS tcs;
DROP TABLE IF EXISTS tvs_motors;

CREATE TABLE bajaj_auto (
    `date` DATE PRIMARY KEY,
    open_price DECIMAL(12,2), high_price DECIMAL(12,2), low_price DECIMAL(12,2),
    close_price DECIMAL(12,2), wap DECIMAL(16,4), no_of_shares BIGINT,
    no_of_trades BIGINT, total_turnover DECIMAL(20,2), deliverable_qty BIGINT,
    pct_deli_qty DECIMAL(6,2), spread_high_low DECIMAL(12,2), spread_close_open DECIMAL(12,2)
);

CREATE TABLE eicher_motors LIKE bajaj_auto;
CREATE TABLE hero_motocorp LIKE bajaj_auto;
CREATE TABLE infosys LIKE bajaj_auto;
CREATE TABLE tcs LIKE bajaj_auto;
CREATE TABLE tvs_motors LIKE bajaj_auto;

-- -----------------------------------------------------
-- Bajaj Auto
-- -----------------------------------------------------
LOAD DATA LOCAL INFILE 'C:/Users/ashwa/Downloads/Bajaj Auto.csv'
INTO TABLE bajaj_auto
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@d,@o,@h,@l,@c,@w,@s,@tr,@to,@dq,@pd,@shl,@sco)
SET
    `date` = STR_TO_DATE(@d, '%d-%M-%Y'),
    open_price = NULLIF(@o,''), high_price = NULLIF(@h,''), low_price = NULLIF(@l,''),
    close_price = NULLIF(@c,''), wap = NULLIF(@w,''), no_of_shares = NULLIF(@s,''),
    no_of_trades = NULLIF(@tr,''), total_turnover = NULLIF(@to,''), deliverable_qty = NULLIF(@dq,''),
    pct_deli_qty = NULLIF(@pd,''), spread_high_low = NULLIF(@shl,''), spread_close_open = NULLIF(TRIM(@sco),'');

-- -----------------------------------------------------
-- Eicher Motors
-- -----------------------------------------------------
LOAD DATA LOCAL INFILE 'C:/Users/ashwa/Downloads/Eicher Motors.csv'
INTO TABLE eicher_motors
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@d,@o,@h,@l,@c,@w,@s,@tr,@to,@dq,@pd,@shl,@sco)
SET `date` = STR_TO_DATE(@d, '%d-%M-%Y'), open_price = NULLIF(@o,''), high_price = NULLIF(@h,''), low_price = NULLIF(@l,''), close_price = NULLIF(@c,''), wap = NULLIF(@w,''), no_of_shares = NULLIF(@s,''), no_of_trades = NULLIF(@tr,''), total_turnover = NULLIF(@to,''), deliverable_qty = NULLIF(@dq,''), pct_deli_qty = NULLIF(@pd,''), spread_high_low = NULLIF(@shl,''), spread_close_open = NULLIF(TRIM(@sco),'');

-- -----------------------------------------------------
-- Hero Motocorp
-- -----------------------------------------------------
LOAD DATA LOCAL INFILE 'C:/Users/ashwa/Downloads/Hero Motocorp.csv'
INTO TABLE hero_motocorp
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@d,@o,@h,@l,@c,@w,@s,@tr,@to,@dq,@pd,@shl,@sco)
SET `date` = STR_TO_DATE(@d, '%d-%M-%Y'), open_price = NULLIF(@o,''), high_price = NULLIF(@h,''), low_price = NULLIF(@l,''), close_price = NULLIF(@c,''), wap = NULLIF(@w,''), no_of_shares = NULLIF(@s,''), no_of_trades = NULLIF(@tr,''), total_turnover = NULLIF(@to,''), deliverable_qty = NULLIF(@dq,''), pct_deli_qty = NULLIF(@pd,''), spread_high_low = NULLIF(@shl,''), spread_close_open = NULLIF(TRIM(@sco),'');

-- -----------------------------------------------------
-- Infosys
-- -----------------------------------------------------
LOAD DATA LOCAL INFILE 'C:/Users/ashwa/Downloads/Infosys.csv'
INTO TABLE infosys
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@d,@o,@h,@l,@c,@w,@s,@tr,@to,@dq,@pd,@shl,@sco)
SET `date` = STR_TO_DATE(@d, '%d-%M-%Y'), open_price = NULLIF(@o,''), high_price = NULLIF(@h,''), low_price = NULLIF(@l,''), close_price = NULLIF(@c,''), wap = NULLIF(@w,''), no_of_shares = NULLIF(@s,''), no_of_trades = NULLIF(@tr,''), total_turnover = NULLIF(@to,''), deliverable_qty = NULLIF(@dq,''), pct_deli_qty = NULLIF(@pd,''), spread_high_low = NULLIF(@shl,''), spread_close_open = NULLIF(TRIM(@sco),'');

-- -----------------------------------------------------
-- TCS
-- -----------------------------------------------------
LOAD DATA LOCAL INFILE 'C:/Users/ashwa/Downloads/TCS.csv'
INTO TABLE tcs
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@d,@o,@h,@l,@c,@w,@s,@tr,@to,@dq,@pd,@shl,@sco)
SET `date` = STR_TO_DATE(@d, '%d-%M-%Y'), open_price = NULLIF(@o,''), high_price = NULLIF(@h,''), low_price = NULLIF(@l,''), close_price = NULLIF(@c,''), wap = NULLIF(@w,''), no_of_shares = NULLIF(@s,''), no_of_trades = NULLIF(@tr,''), total_turnover = NULLIF(@to,''), deliverable_qty = NULLIF(@dq,''), pct_deli_qty = NULLIF(@pd,''), spread_high_low = NULLIF(@shl,''), spread_close_open = NULLIF(TRIM(@sco),'');

-- -----------------------------------------------------
-- TVS Motors
-- -----------------------------------------------------
LOAD DATA LOCAL INFILE 'C:/Users/ashwa/Downloads/TVS Motors.csv'
INTO TABLE tvs_motors
FIELDS TERMINATED BY ','
LINES TERMINATED BY '\n'
IGNORE 1 LINES
(@d,@o,@h,@l,@c,@w,@s,@tr,@to,@dq,@pd,@shl,@sco)
SET `date` = STR_TO_DATE(@d, '%d-%M-%Y'), open_price = NULLIF(@o,''), high_price = NULLIF(@h,''), low_price = NULLIF(@l,''), close_price = NULLIF(@c,''), wap = NULLIF(@w,''), no_of_shares = NULLIF(@s,''), no_of_trades = NULLIF(@tr,''), total_turnover = NULLIF(@to,''), deliverable_qty = NULLIF(@dq,''), pct_deli_qty = NULLIF(@pd,''), spread_high_low = NULLIF(@shl,''), spread_close_open = NULLIF(TRIM(@sco),'');

-- Quick validation: each table should contain 889 rows.
SELECT 'Bajaj Auto' AS stock, COUNT(*) AS rows_loaded FROM bajaj_auto
UNION ALL SELECT 'Eicher Motors', COUNT(*) FROM eicher_motors
UNION ALL SELECT 'Hero Motocorp', COUNT(*) FROM hero_motocorp
UNION ALL SELECT 'Infosys', COUNT(*) FROM infosys
UNION ALL SELECT 'TCS', COUNT(*) FROM tcs
UNION ALL SELECT 'TVS Motors', COUNT(*) FROM tvs_motors;
