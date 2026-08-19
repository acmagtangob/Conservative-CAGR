-- ===== hype_usd CAGR =====
WITH start_point AS (
    SELECT
        date AS start_date,
        close AS start_price
    FROM hype_usd_daily
    WHERE close IS NOT NULL
    ORDER BY close ASC, date ASC
    LIMIT 1
),
latest_point AS (
    SELECT
        MAX(date) AS latest_date
    FROM hype_usd_daily
    WHERE close IS NOT NULL
)
SELECT
    s.start_date AS `Start Date`,
    d.date AS `End Date`,
    ROUND(s.start_price, 2) AS `Start Price`,
    ROUND(d.close, 2) AS `End Price`,
    ROUND(
        (
            POWER(
                d.close / s.start_price,
                365.25 / DATEDIFF(d.date, s.start_date)
            ) - 1
        ) * 100,
        6
    ) AS `CAGR (%)`
FROM hype_usd_daily AS d
CROSS JOIN start_point AS s
CROSS JOIN latest_point AS l
WHERE d.date > s.start_date
  AND d.date <= l.latest_date
  AND d.close IS NOT NULL
  AND d.close <> s.start_price
ORDER BY `CAGR (%)` ASC
LIMIT 1;

-- ===== brk_a CAGR =====
WITH start_point AS (
    SELECT
        date AS start_date,
        close AS start_price
    FROM brk_a_daily
    WHERE close IS NOT NULL
    ORDER BY close ASC, date ASC
    LIMIT 1
),
latest_point AS (
    SELECT
        MAX(date) AS latest_date
    FROM brk_a_daily
    WHERE close IS NOT NULL
)
SELECT
    s.start_date AS `Start Date`,
    d.date AS `End Date`,
    ROUND(s.start_price, 2) AS `Start Price`,
    ROUND(d.close, 2) AS `End Price`,
    ROUND(
        (
            POWER(
                d.close / s.start_price,
                365.25 / DATEDIFF(d.date, s.start_date)
            ) - 1
        ) * 100,
        6
    ) AS `CAGR (%)`
FROM brk_a_daily AS d
CROSS JOIN start_point AS s
CROSS JOIN latest_point AS l
WHERE d.date > s.start_date
  AND d.date <= l.latest_date
  AND d.close IS NOT NULL
  AND d.close <> s.start_price
ORDER BY `CAGR (%)` ASC
LIMIT 1;

-- ===== well CAGR =====
WITH start_point AS (
    SELECT
        date AS start_date,
        close AS start_price
    FROM well_daily
    WHERE close IS NOT NULL
    ORDER BY close ASC, date ASC
    LIMIT 1
),
latest_point AS (
    SELECT
        MAX(date) AS latest_date
    FROM well_daily
    WHERE close IS NOT NULL
)
SELECT
    s.start_date AS `Start Date`,
    d.date AS `End Date`,
    ROUND(s.start_price, 2) AS `Start Price`,
    ROUND(d.close, 2) AS `End Price`,
    ROUND(
        (
            POWER(
                d.close / s.start_price,
                365.25 / DATEDIFF(d.date, s.start_date)
            ) - 1
        ) * 100,
        6
    ) AS `CAGR (%)`
FROM well_daily AS d
CROSS JOIN start_point AS s
CROSS JOIN latest_point AS l
WHERE d.date > s.start_date
  AND d.date <= l.latest_date
  AND d.close IS NOT NULL
  AND d.close <> s.start_price
ORDER BY `CAGR (%)` ASC
LIMIT 1;

-- ===== xaut_usd CAGR =====
WITH start_point AS (
    SELECT
        date AS start_date,
        close AS start_price
    FROM xaut_usd_daily
    WHERE close IS NOT NULL
    ORDER BY close ASC, date ASC
    LIMIT 1
),
latest_point AS (
    SELECT
        MAX(date) AS latest_date
    FROM xaut_usd_daily
    WHERE close IS NOT NULL
)
SELECT
    s.start_date AS `Start Date`,
    d.date AS `End Date`,
    ROUND(s.start_price, 2) AS `Start Price`,
    ROUND(d.close, 2) AS `End Price`,
    ROUND(
        (
            POWER(
                d.close / s.start_price,
                365.25 / DATEDIFF(d.date, s.start_date)
            ) - 1
        ) * 100,
        6
    ) AS `CAGR (%)`
FROM xaut_usd_daily AS d
CROSS JOIN start_point AS s
CROSS JOIN latest_point AS l
WHERE d.date > s.start_date
  AND d.date <= l.latest_date
  AND d.close IS NOT NULL
  AND d.close <> s.start_price
ORDER BY `CAGR (%)` ASC
LIMIT 1;

-- ===== nvda CAGR =====
WITH start_point AS (
    SELECT
        date AS start_date,
        close AS start_price
    FROM nvda_daily
    WHERE close IS NOT NULL
    ORDER BY close ASC, date ASC
    LIMIT 1
),
latest_point AS (
    SELECT
        MAX(date) AS latest_date
    FROM nvda_daily
    WHERE close IS NOT NULL
)
SELECT
    s.start_date AS `Start Date`,
    d.date AS `End Date`,
    ROUND(s.start_price, 2) AS `Start Price`,
    ROUND(d.close, 2) AS `End Price`,
    ROUND(
        (
            POWER(
                d.close / s.start_price,
                365.25 / DATEDIFF(d.date, s.start_date)
            ) - 1
        ) * 100,
        6
    ) AS `CAGR (%)`
FROM nvda_daily AS d
CROSS JOIN start_point AS s
CROSS JOIN latest_point AS l
WHERE d.date > s.start_date
  AND d.date <= l.latest_date
  AND d.close IS NOT NULL
  AND d.close <> s.start_price
ORDER BY `CAGR (%)` ASC
LIMIT 1;

WITH start_point AS (
    SELECT
        date AS start_date,
        close AS start_price
    FROM btc_usd_daily
    WHERE close IS NOT NULL
    ORDER BY close ASC, date ASC
    LIMIT 1
),

latest_point AS (
    SELECT
        MAX(date) AS latest_date
    FROM btc_usd_daily
    WHERE close IS NOT NULL
)

SELECT
    s.start_date AS `Start Date`,
    d.date AS `End Date`,
    ROUND(s.start_price, 2) AS `Start Price`,
    ROUND(d.close, 2) AS `End Price`,
    ROUND(
        (
            POWER(
                d.close / s.start_price,
                365.25 / DATEDIFF(d.date, s.start_date)
            ) - 1
        ) * 100,
        6
    ) AS `CAGR (%)`
FROM btc_usd_daily AS d
CROSS JOIN start_point AS s
CROSS JOIN latest_point AS l
WHERE d.date > s.start_date
  AND d.date <= l.latest_date
  AND d.close IS NOT NULL
  AND d.close <> s.start_price
ORDER BY `CAGR (%)` ASC
LIMIT 1;
