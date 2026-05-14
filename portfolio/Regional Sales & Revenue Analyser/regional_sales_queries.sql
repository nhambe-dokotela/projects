CREATE TABLE agri_sales (
  product_name VARCHAR(50),
  category VARCHAR(50),
  price_per_kg DECIMAL(10,2),
  units_shipped_kg DECIMAL(10,2),
  units_sold_kg DECIMAL(10,2),
  units_on_hand_kg DECIMAL(10,2),
  supplier VARCHAR(100),
  province VARCHAR(50),
  sale_date DATE,
  revenue_zar DECIMAL(10,2)
);
INSERT INTO agri_sales VALUES
('Grapes', 'Fruits', 3.83, 11720, 9006, 2714, 'Golden Orchards', 'Western Cape', '2023-01-11', 34493.00),
('Chicken', 'Livestock', 2.59, 39859, 4029, 35830, 'Organic Meats Co.', 'Gauteng', '2023-02-18', 10435.11),
('Tomatoes', 'Vegetables', 1.85, 5200, 4100, 1100, 'Berry Fields', 'Limpopo', '2022-05-15', 7585.00),
('Maize', 'Grains', 2.10, 8500, 7200, 1300, 'SA Grain Co.', 'Free State', '2022-07-22', 15120.00),
('Apples', 'Fruits', 4.20, 3200, 2800, 400, 'Golden Orchards', 'Western Cape', '2023-03-10', 11760.00),
('Beef', 'Livestock', 11.37, 29504, 4550, 24954, 'Organic Meats Co.', 'KwaZulu-Natal', '2023-10-21', 51733.50),
('Potatoes', 'Vegetables', 1.45, 6700, 5900, 800, 'Fresh Farms', 'Mpumalanga', '2022-09-05', 8555.00),
('Wheat', 'Grains', 2.75, 9200, 8100, 1100, 'SA Grain Co.', 'North West', '2022-11-18', 22275.00),
('Oranges', 'Fruits', 2.59, 1838, 1722, 116, 'Berry Fields', 'Eastern Cape', '2023-12-24', 4460.00),
('Milk', 'Dairy', 1.34, 6750, 1232, 5518, 'Fresh Dairy Farms', 'Gauteng', '2023-12-25', 1650.88),
('Lamb', 'Livestock', 14.10, 19224, 14905, 4319, 'Organic Meats Co.', 'Northern Cape', '2022-07-04', 210160.50),
('Cabbage', 'Vegetables', 1.20, 4500, 3800, 700, 'Green Valley', 'Limpopo', '2022-08-12', 4560.00),
('Bananas', 'Fruits', 1.95, 7800, 6500, 1300, 'Tropical Farms', 'KwaZulu-Natal', '2023-04-19', 12675.00),
('Rice', 'Grains', 3.50, 5100, 4200, 900, 'SA Grain Co.', 'Mpumalanga', '2023-06-30', 14700.00),
('Cheese', 'Dairy', 8.90, 2100, 1800, 300, 'Fresh Dairy Farms', 'Western Cape', '2022-10-08', 16020.00),
('Pork', 'Livestock', 6.75, 8900, 7200, 1700, 'Organic Meats Co.', 'Free State', '2023-02-14', 48600.00),
('Carrots', 'Vegetables', 1.10, 3900, 3200, 700, 'Green Valley', 'Eastern Cape', '2022-06-22', 3520.00),
('Strawberries', 'Fruits', 6.50, 1200, 950, 250, 'Berry Fields', 'Western Cape', '2023-01-30', 6175.00),
('Butter', 'Dairy', 5.20, 3400, 2900, 500, 'Fresh Dairy Farms', 'Gauteng', '2022-12-15', 15080.00),
('Oats', 'Grains', 2.30, 4700, 3900, 800, 'SA Grain Co.', 'North West', '2023-08-07', 8970.00),
('Lettuce', 'Vegetables', 0.95, 2800, 2400, 400, 'Green Valley', 'KwaZulu-Natal', '2023-05-25', 2280.00),
('Grapes', 'Fruits', 3.83, 4500, 3800, 700, 'Golden Orchards', 'Northern Cape', '2022-04-11', 14554.00),
('Yogurt', 'Dairy', 2.80, 5600, 4700, 900, 'Fresh Dairy Farms', 'Mpumalanga', '2023-09-18', 13160.00),
('Corn', 'Grains', 1.90, 7200, 6100, 1100, 'SA Grain Co.', 'Limpopo', '2022-03-28', 11590.00),
('Peaches', 'Fruits', 3.15, 2900, 2300, 600, 'Berry Fields', 'Eastern Cape', '2023-07-14', 7245.00);

-- 1. Total revenue by province
SELECT province, 
       SUM(revenue_zar) AS total_revenue,
       COUNT(*) AS total_transactions
FROM agri_sales
GROUP BY province
ORDER BY total_revenue DESC;

-- 2. Top 5 products by revenue
SELECT product_name,
       SUM(revenue_zar) AS total_revenue,
       SUM(units_sold_kg) AS total_units_sold
FROM agri_sales
GROUP BY product_name
ORDER BY total_revenue DESC
LIMIT 5;

-- 3. Revenue by category
SELECT category,
       SUM(revenue_zar) AS total_revenue,
       ROUND(SUM(revenue_zar) * 100.0 / SUM(SUM(revenue_zar)) OVER(), 2) AS percentage
FROM agri_sales
GROUP BY category
ORDER BY total_revenue DESC;

-- 4. Top supplier per province
SELECT province, 
       supplier, 
       SUM(revenue_zar) AS total_revenue
FROM agri_sales
GROUP BY province, supplier
ORDER BY province, total_revenue DESC;

-- 5. Best performing province per category
SELECT category,
       province,
       SUM(revenue_zar) AS total_revenue
FROM agri_sales
GROUP BY category, province
ORDER BY category, total_revenue DESC;

-- 6. Stock efficiency (sold vs shipped ratio)
SELECT product_name,
       SUM(units_sold_kg) AS total_sold,
       SUM(units_shipped_kg) AS total_shipped,
       ROUND(SUM(units_sold_kg) * 100.0 / SUM(units_shipped_kg), 2) AS sell_through_rate
FROM agri_sales
GROUP BY product_name
ORDER BY sell_through_rate DESC;
