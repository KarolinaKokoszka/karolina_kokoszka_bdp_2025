-- c. nazwy i pola powierzchni wszystkich poligonów w warstwie budynki (wyniki posortowane alfabetycznie)
SELECT name, ST_Area(geometry) AS pole
FROM buildings
ORDER BY name;