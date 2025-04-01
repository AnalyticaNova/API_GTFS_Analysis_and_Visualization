-- Q3.1_ Which top 10 high-traffic stops lack wheelchair access?(wheelchair_boarding = 2 (no access))
SELECT stop_id, stop_name, COUNT(*) AS total_departures, wheelchair_boarding
FROM gtfs_schedule
WHERE wheelchair_boarding = 2
GROUP BY stop_id, stop_name, wheelchair_boarding
ORDER BY total_departures DESC
LIMIT 10;

/*
Stops:
"Station Laurier"
"Station Lucien-L'Allier"
"Station Place-Saint-Henri"
"Station Côte-Sainte-Catherine"
"Station Square-Victoria–OACI"
"Station Sherbrooke"
"Station Jarry"
"Station Plamondon"
"Station Namur"
"Station Beaubien"
/*