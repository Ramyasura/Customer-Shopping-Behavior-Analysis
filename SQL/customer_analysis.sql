SELECT COUNT(DISTINCT customer_id) AS total_customers
FROM customer_shopping_cleaned;

SELECT SUM(purchase_amount_usd) AS total_purchase_amount
FROM customer_shopping_cleaned;

SELECT AVG(purchase_amount_usd) AS average_purchase_amount
FROM customer_shopping_cleaned;

SELECT
    category,
    COUNT(*) AS total_purchases,
    SUM(purchase_amount_usd) AS total_amount,
    AVG(purchase_amount_usd) AS average_amount
FROM customer_shopping_cleaned
GROUP BY category
ORDER BY total_amount DESC;

SELECT
    item_purchased,
    COUNT(*) AS purchase_count
FROM customer_shopping_cleaned
GROUP BY item_purchased
ORDER BY purchase_count DESC
LIMIT 5;

SELECT
    gender,
    COUNT(*) AS customer_count
FROM customer_shopping_cleaned
GROUP BY gender;

SELECT
    payment_method,
    COUNT(*) AS total_transactions
FROM customer_shopping_cleaned
GROUP BY payment_method
ORDER BY total_transactions DESC;

SELECT
    subscription_status,
    COUNT(*) AS customer_count,
    AVG(purchase_amount_usd) AS average_purchase,
    SUM(purchase_amount_usd) AS total_purchase
FROM customer_shopping_cleaned
GROUP BY subscription_status;

SELECT
    season,
    COUNT(*) AS total_purchases,
    SUM(purchase_amount_usd) AS total_amount
FROM customer_shopping_cleaned
GROUP BY season
ORDER BY total_amount DESC;

SELECT
    category,
    ROUND(AVG(review_rating), 2) AS average_rating
FROM customer_shopping_cleaned
GROUP BY category
ORDER BY average_rating DESC;

SELECT
    discount_applied,
    COUNT(*) AS total_purchases,
    ROUND(AVG(purchase_amount_usd), 2) AS average_purchase
FROM customer_shopping_cleaned
GROUP BY discount_applied;

SELECT
    location,
    SUM(purchase_amount_usd) AS total_purchase
FROM customer_shopping_cleaned
GROUP BY location
ORDER BY total_purchase DESC
LIMIT 5;

SELECT
    age_group,
    COUNT(*) AS customer_count,
    ROUND(AVG(purchase_amount_usd), 2) AS average_purchase
FROM customer_shopping_cleaned
GROUP BY age_group
ORDER BY average_purchase DESC;