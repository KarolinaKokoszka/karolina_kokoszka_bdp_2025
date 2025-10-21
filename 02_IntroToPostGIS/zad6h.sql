-- h. obliczenie pole powierzchni tych części budynku BuildingC i poligonu o współrzędnych (4 7, 6 7, 6 8, 4 8, 4 7), które nie są wspólne dla tych dwóch obiektów
SELECT ST_Area(ST_SymDifference(bc.geometry,ST_GeomFromText('POLYGON((4 7, 6 7, 6 8, 4 8, 4 7))'))) AS pole
FROM buildings bc
WHERE bc.name = 'BuildingC';
