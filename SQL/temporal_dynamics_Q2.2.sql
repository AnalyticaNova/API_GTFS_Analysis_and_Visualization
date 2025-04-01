-- Q2.2_ What is the hourly departure pattern breakdown between weekdays and weekends?
SELECT 
	hour,
	SUM(CASE WHEN monday+tuesday+wednesday+thursday+friday >= 1 THEN 1 ELSE 0 END) as weekday_departures,
	SUM(CASE WHEN saturday+sunday >= 1 THEN 1 ELSE 0 END) as weekend_departures
FROM gtfs_schedule
GROUP BY hour
ORDER BY hour

/*
hour|weekday|weekend
4	12	    12
5	774	    608
6	2742	1961
7	3576	1983
8	3793	2113
9	3448	2222
10	2891	2237
11	2877	2369
12	3022	2544
13	3072	2741
14	3126	2826
15	3518	2867
16	4217	2852
17	4109	2808
18	3464	2733
19	2849	2549
20	2594	2367
21	2519	2314
22	2389	2069
23	2139	1975
24	1854	1892
25	285		895
26	21		348
27	15		342
28	12		336
29	12		253
30	0		2
*/
	
