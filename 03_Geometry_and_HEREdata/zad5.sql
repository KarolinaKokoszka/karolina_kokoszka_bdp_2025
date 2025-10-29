-- 5. pole powierzchni wszystkich buforów o wielkości 5 jednostek, które zostały utworzone wokół obiektów nie zawierających łuków
SELECT 
    SUM(ST_Area(ST_Buffer(geometry, 5))) AS suma_pol_buforow
FROM obiekty
WHERE ST_HasArc(ST_LineToCurve(geometry)) = FALSE;