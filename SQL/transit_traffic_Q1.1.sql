--Q1.1- What are the top 10 busiest stops overall, and how many total departures happen at each one?

SELECT stop_id, stop_name, COUNT(*) AS total_departures
FROM gtfs_schedule
GROUP BY stop_id, stop_name
ORDER BY total_departures DESC
LIMIT 10;

-- Top 3 Stops: "Station Lionel-Groulx", "Station Henri-Bourassa", and "Angrignon / Tours Angrignon"