CREATE SCHEMA traffic_accident_data;
USE traffic_accident_data;

##show Table Records
SELECT * FROM traffic_accident_data;

## Total Accidents
SELECT COUNT(accident_id) AS total_accidents FROM traffic_accident_data;

##Accidents by Severity
SELECT accident_severity, COUNT(*) AS count
FROM traffic_accident_data
GROUP BY accident_severity;

##Accidents by Vehicle Type
SELECT vehicle_type, COUNT(*) AS accidents
FROM traffic_accident_data
GROUP BY vehicle_type
ORDER BY accidents DESC;

##City-wise Accident Count
SELECT city, COUNT(*) AS accidents
FROM traffic_accident_data
GROUP BY city
ORDER BY accidents DESC;

##Weather Impact
SELECT weather, COUNT(*) AS accidents
FROM  traffic_accident_data
GROUP BY weather
ORDER BY accidents DESC;

##Road Condition Risk
SELECT road_condition, COUNT(*) AS accidents
FROM traffic_accident_data
GROUP BY road_condition;

##Night Vs Day Accident Analysis
SELECT light_condition, COUNT(*) AS accidents
FROM traffic_accident_data
GROUP BY light_condition;

##Time-based Accidents
SELECT HOUR(time) AS hour, COUNT(*) AS accidents
FROM traffic_accident_data
GROUP BY hour
ORDER BY hour;

##Monthly Accident Trend
SELECT 
    MONTH(date) AS month,
    COUNT(*) AS accidents
FROM traffic_accident_data
GROUP BY MONTH(date)
ORDER BY month;
