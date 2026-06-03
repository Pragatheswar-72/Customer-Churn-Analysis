CREATE TABLE customer_churn(
customerID VARCHAR(50),
gender VARCHAR(20),
SeniorCitizen INT,
Partner VARCHAR(10),
Dependents VARCHAR(10),
tenure INT,
PhoneService VARCHAR(10),
InternetService VARCHAR(50),
Contract VARCHAR(50),
MonthlyCharges FLOAT,
TotalCharges FLOAT,
Churn VARCHAR(10)
);

SELECT COUNT(*) AS Total_Customers
FROM customer_churn;

SELECT Churn,
COUNT(*) AS Total
FROM customer_churn
GROUP BY Churn;

SELECT
AVG(MonthlyCharges)
FROM customer_churn;

SELECT
Contract,
COUNT(*) AS Customers
FROM customer_churn
WHERE Churn='Yes'
GROUP BY Contract
ORDER BY Customers DESC;

SELECT
Contract,
AVG(MonthlyCharges) AvgCharges
FROM customer_churn
WHERE Churn='Yes'
GROUP BY Contract;