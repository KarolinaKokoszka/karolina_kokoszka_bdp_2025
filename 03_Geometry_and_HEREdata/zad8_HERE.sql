-- 8. punkty przecięcia torów kolejowych (RAILWAYS) z ciekami (WATER_LINES), zapisanie znalezionej geometrii do osobnej tabeli o nazwie ‘T2019_KAR_BRIDGES’
-- ST_Intersection - zwraca geometrię przecięcia
SELECT DISTINCT ST_Intersection(r.geom, w.geom) AS geom
INTO T2019_KAR_BRIDGES
FROM railways2019 r
JOIN water_lines2019 w
  ON ST_Intersects(r.geom, w.geom);