-- b. geometria (WKT), pole powierzchni oraz obwód poligonu reprezentującego budynek o nazwie BuildingA
SELECT 
ST_AsText(geometry) AS wkt, 
ST_Area(geometry) AS pole, 
ST_Perimeter(geometry) AS obwod
FROM buildings
WHERE name = 'BuildingA';