-- Q1.2_ For the top 5 busiest stops, which routes serve them most frequently?
WITH busiest_stops AS (
    SELECT stop_name
    FROM gtfs_schedule
    GROUP BY stop_name
    ORDER BY COUNT(*) DESC
    LIMIT 5
)
SELECT stop_name, route_id, route_long_name, COUNT(*) AS total_departures
FROM gtfs_schedule
WHERE stop_name IN (SELECT stop_name FROM busiest_stops)
GROUP BY stop_name, route_id, route_long_name
ORDER BY stop_name, total_departures DESC;

-- Stop 1: Angrignon / Tours Angrignon -> Routes: "Newman", "Jolicoeur", "Monk", "Centrale", "Dorval/Angrignon"
-- Stop 2: Sherbrooke / Saint-Donat -> "Jean-Talon Est", "René-Lévesque", "Sherbrooke-Est", "Sherbrooke", "Mercier-Est", "Hochelaga / Notre-Dame"
-- Stop 3: Station Henri-Bourassa -> "Perras", "Maurice-Duplessis", "Henri-Bourassa", "Dudemaine", "Saint-Denis / Saint-Hubert", "Christophe-Colomb / Meilleur", "Express Henri-Bourassa""Saint-Hubert"
-- Stop 4: Station Lionel-Groulx -> "Ligne 2 - Orange", "Ligne 1 - Verte"
-- Stop 5: Station Square-Victoria–OACI -> "Ligne 2 - Orange"
