-- Q3.2_ What is the accessibility rate per route? 
-- wheelchair_boarding: 1->Wheelchair accessible

SELECT route_id, route_long_name, COUNT(*) AS total_departures,
	   ROUND(100.0 * SUM(CASE WHEN wheelchair_boarding = 1 THEN 1 ELSE 0 END)/COUNT(*),2) as accessibility_percent
FROM gtfs_schedule
GROUP BY route_id, route_long_name
ORDER BY accessibility_percent

/*
route_id | route_long_name | total_departures | accessibility_percent
2		"Ligne 2 - Orange"				89508	53.85
26		"Mercier-Est"					879		100.00
30		"Saint-Denis / Saint-Hubert"	426		100.00
36		"Monk"							513		100.00
37		"Jolicoeur"						513		100.00
48		"Perras"						928		100.00
49		"Maurice-Duplessis"				763		100.00
56		"Saint-Hubert"					72		100.00
101		"Saint-Patrick"					130		100.00
106		"Newman"						969		100.00
110		"Centrale"						500		100.00
114		"Angrignon"						483		100.00
141		"Jean-Talon Est"				2688	100.00
146		"Christophe-Colomb / Meilleur"	387		100.00
164		"Dudemaine"						513		100.00
171		"Henri-Bourassa"				724		100.00
185		"Sherbrooke"					969		100.00
186		"Sherbrooke-Est"				1143	100.00
187		"René-Lévesque"					1265	100.00
195		"Dorval / Angrignon"			498		100.00
362		"Hochelaga / Notre-Dame"		117		100.00
1		"Ligne 1 - Verte"				3362	100.00
469		"Express Henri-Bourassa"		198		100.00
*/