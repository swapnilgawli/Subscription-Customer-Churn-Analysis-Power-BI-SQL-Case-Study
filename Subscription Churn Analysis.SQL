CREATE DATABASE subscription_churn_analysis;
SELECT * FROM subscription_churn_analysis LIMIT 10;
SELECT COUNT(*) AS Total_Rows
FROM subscription_churn_analysis;
DESCRIBE subscription_churn_analysis;
SELECT 
	Churn,
    COUNT(*) AS Total_Customers
FROM subscription_churn_analysis
GROUP BY Churn;
SELECT 
	ROUND(
		(SUM(CASE WHEN Churn = 1 THEN 1 ELSE 0 END) / COUNT(*)) * 100, 
        2
	) AS Churn_Rate_Percentage 
FROM subscription_churn_analysis;
SELECT SubscriptionType, AVG(Churn)*100
FROM subscription_churn_analysis
GROUP BY SubscriptionType;
SELECT PaymentMethod, AVG(Churn)*100
FROM subscription_churn_analysis
GROUP BY PaymentMethod;
SELECT SupportTicketsPerMonth, AVG(Churn)*100
FROM subscription_churn_analysis
GROUP BY SupportTicketsPerMonth
ORDER BY SupportTicketsPerMonth;
SELECT ViewingHoursPerWeek, AVG(Churn)
FROM subscription_churn_analysis
GROUP BY ViewingHoursPerWeek
ORDER BY ViewingHoursPerWeek;
SELECT 
    FLOOR(ViewingHoursPerWeek) AS Viewing_Hours_Range,
    AVG(Churn)*100 AS Churn_Rate
FROM subscription_churn_analysis
GROUP BY Viewing_Hours_Range
ORDER BY Viewing_Hours_Range;
SELECT MultiDeviceAccess, AVG(Churn)*100
FROM subscription_churn_analysis
GROUP BY MultiDeviceAccess
ORDER BY MultiDeviceAccess;
SELECT UserRating, AVG(Churn)*100
FROM subscription_churn_analysis
GROUP BY UserRating
ORDER BY UserRating;
SELECT 
    FLOOR(UserRating) AS Rating_Level,
    AVG(Churn)*100 AS Churn_Rate
FROM subscription_churn_analysis
GROUP BY Rating_Level
ORDER BY Rating_Level;
SELECT PaperlessBilling, AVG(Churn)
FROM subscription_churn_analysis
GROUP BY PaperlessBilling
ORDER BY PaperlessBilling;	
SELECT GenrePreference, AVG(Churn)
FROM subscription_churn_analysis
GROUP BY GenrePreference
ORDER BY GenrePreference;
SELECT 
    GenrePreference, 
    ROUND(AVG(Churn) * 100, 2) AS Churn_Percentage
FROM subscription_churn_analysis
GROUP BY GenrePreference
ORDER BY Churn_Percentage DESC;
SELECT 
    PaperlessBilling, 
    ROUND(AVG(Churn) * 100, 2) AS Churn_Percentage
FROM subscription_churn_analysis
GROUP BY PaperlessBilling;
