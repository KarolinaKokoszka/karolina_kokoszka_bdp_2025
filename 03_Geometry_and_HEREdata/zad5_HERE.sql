-- 5. aktualizacjia danych w tabeli ‘input_points’ tak, aby punkty te były w układzie współrzędnych DHDN.Berlin/Cassini
ALTER TABLE input_points
  ALTER COLUMN geom
  TYPE geometry(Point)
  USING ST_Transform(ST_SetSRID(geom, 4326), 3068);
