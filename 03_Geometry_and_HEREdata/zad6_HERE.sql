-- 6.  skrzyżowania, które znajdują się w odległości 200 m od linii zbudowanej z punktów w tabeli ‘input_points’
-- Wykorzystaj tabelę T2019_STREET_NODE (street_node2019) 
-- Dokonaj reprojekcji geometrii, aby była zgodna z resztą tabel
WITH line_geom AS (
    SELECT ST_MakeLine(geom) AS geom -- zbudowanie lini, wynik w SRID 3068
    FROM input_points
),
intersect_yes AS (
    SELECT DISTINCT
           node_id,
           ST_Transform(geom, 3068) AS geom
    FROM street_node2019 sn
    WHERE sn.intersect = 'Y'
)
SELECT iy.*
FROM line_geom lg, intersect_yes iy
WHERE ST_DWithin(iy.geom, lg.geom,200); -- jednostki ukł. 3068 to metry