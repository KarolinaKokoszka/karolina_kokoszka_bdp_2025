-- f. pole powierzchni tej części budynku BuildingC, która znajduje się w odległości większej niż 0.5 od budynku BuildingB
SELECT ST_Area(ST_Difference(bc.geometry, ST_Buffer(bb.geometry, 0.5))) AS poleC_poza_buffB
FROM buildings bc
CROSS JOIN buildings bb
WHERE bc.name = 'BuildingC' AND bb.name = 'BuildingB';