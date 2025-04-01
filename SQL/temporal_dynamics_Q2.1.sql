--Q2.1_ Which hours of the day have the highest and lowest total departures across the entire network?

SELECT hour, COUNT(*) AS total_departures
FROM gtfs_schedule
GROUP BY hour
ORDER BY total_departures DESC;

/*
hour|total_departures
17	6917
15	6385
18	6197
14	5952
8	5906
13	5813
9	5670
12	5566
7	5559
19	5398
11	5246
10	5128
20	4961
21	4833
6	4703
22	4458
23	4114
24	3746
5	1382
25	1180
26	369
27	357
28	348
29	265
4	24
30	2
*/