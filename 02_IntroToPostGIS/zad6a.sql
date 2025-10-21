-- a. całkowita dł. dróg w analizowanym mieście 
SELECT SUM(ST_Length(geometry)) AS total_roads_len
FROM roads;