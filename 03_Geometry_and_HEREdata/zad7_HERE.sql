-- 7. jak wiele sklepów sportowych (‘Sporting Goods Store’ - tabela POIs) znajduje się w odległości 300 m od parków (LAND_USE_A).
WITH parks AS (
    SELECT geom
    FROM land_use_a2019
    WHERE "type" ILIKE '%park%'      
),
sport_shops AS (
    SELECT *
    FROM poi2019
    WHERE "type" LIKE 'Sporting Goods Store'
)
SELECT COUNT(DISTINCT s.gid) AS sport_shops_within_300m
FROM sport_shops s
JOIN parks p
  ON ST_DWithin(s.geom,p.geom,0.003); -- obie geometrie w ukł. 4326 => jednostki w stopnich