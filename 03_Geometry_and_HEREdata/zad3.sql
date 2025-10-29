-- 3. zmiana obiekt4 na poligon
--WARUNEK: linia musi być zamknięta (tzn. początek = koniec)
UPDATE obiekty
SET geometry = ST_MakePolygon(
    ST_AddPoint(geometry, ST_StartPoint(geometry))
)
WHERE name = 'obiekt4';