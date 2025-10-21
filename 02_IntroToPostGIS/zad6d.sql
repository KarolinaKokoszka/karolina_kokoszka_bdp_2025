-- d. nazwy i obwody 2 budynków o największej powierzchni
SELECT name, ST_Perimeter(geometry) AS obwod
FROM buildings
ORDER BY ST_Area(geometry) DESC
LIMIT 2;