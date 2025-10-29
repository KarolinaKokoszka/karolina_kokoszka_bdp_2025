-- 2.  pole powierzchni bufora o wielkości 5 jednostek, który został utworzony wokół najkrótszej linii łączącej obiekt 3 i 4
--- ST_ShortestLine — Returns the 2-dimensional shortest line between two geometries 
SELECT 
    ST_Area(
        ST_Buffer(ST_ShortestLine(a.geometry, b.geometry),5)
    ) AS pole_bufora
FROM obiekty a, obiekty b
WHERE a.name = 'obiekt3' AND b.name = 'obiekt4';