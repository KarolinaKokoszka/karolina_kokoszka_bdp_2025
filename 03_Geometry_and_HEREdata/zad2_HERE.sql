-- 2.  ile nowych POI pojawiło się w promieniu 500 m od wyremontowanych lub wybudowanych budynków, które znalezione zostały w zadaniu 1 (zliczanie wg ich kategorii)
-- ST_DWithin(gg1, gg2, double precision distance_meters) - Returns true if the geometries are within a given distance

WITH changed_buildings AS (
    SELECT b2019.*
    FROM buildings2019 b2019
    LEFT JOIN buildings2018 b2018
    	ON b2019.geom = b2018.geom
	WHERE 
		b2018.geom IS NULL
		OR
		b2018.height <> b2019.height
),
new_pois AS ( -- nowy punkt = nowa lub zmieniona geometria
    SELECT p2019.*
    FROM poi2019 p2019
    LEFT JOIN poi2018 p2018 ON p2019.geom = p2018.geom    
    WHERE p2018.geom IS NULL  -- geometria istnieje w 2019, nie w 2018
)
SELECT np.type,
       COUNT(DISTINCT np.poi_id) AS new_poi_count
FROM new_pois np
JOIN changed_buildings cb
  ON ST_DWithin(np.geom, cb.geom,0.005) -- w jednostakch układu czyli w stopniach (500m / 111 111 m/stopień to około 0,005)
GROUP BY np.type;