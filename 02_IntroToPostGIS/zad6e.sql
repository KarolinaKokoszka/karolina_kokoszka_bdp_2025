-- e. wyznaczenie najkrótszej odległości między budynkiem BuildingC a punktem K
SELECT ST_Distance(b.geometry, p.geometry) AS odleglosc
FROM buildings b
JOIN poi p ON p.name = 'K'
WHERE b.name = 'BuildingC';