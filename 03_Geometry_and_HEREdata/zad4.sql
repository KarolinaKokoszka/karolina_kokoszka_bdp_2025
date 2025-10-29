-- 4. obiekt7 -  obiekt złożony z obiektu 3 i obiektu 4
INSERT INTO obiekty (name, geometry)
SELECT 'obiekt7', ST_Collect(a.geometry, b.geometry)
FROM obiekty a, obiekty b
WHERE a.name = 'obiekt3' AND b.name = 'obiekt4';