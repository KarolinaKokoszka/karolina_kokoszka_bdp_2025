-- 1.b
INSERT INTO obiekty(name, geometry)
VALUES ('obiekt2',
    ST_CurveToLine(
        ST_GeomFromEWKT(
            'SRID=0;GEOMETRYCOLLECTION(
                 LINESTRING(10 6, 14 6),
                 CIRCULARSTRING(14 6, 16 4, 14 2),
                 CIRCULARSTRING(14 2, 12 0, 10 2),
                 CIRCULARSTRING(11 2, 12 3, 13 2, 12 1, 11 2),  
                 LINESTRING(10 2, 10 6)
            )'
        )
    )
);