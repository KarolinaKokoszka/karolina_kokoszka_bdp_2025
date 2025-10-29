-- 1.c
INSERT INTO obiekty (name, geometry)
VALUES ('obiekt3',
    ST_GeomFromEWKT('SRID=0;POLYGON((7 15, 10 17, 12 13, 7 15))')
);
