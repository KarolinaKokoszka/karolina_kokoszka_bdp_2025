-- 1.f
INSERT INTO obiekty(name, geometry)
VALUES ('obiekt6', 
	ST_GeomFromEWKT(
		'SRID=0;GEOMETRYCOLLECTION(
			LINESTRING(1 1, 3 2),
			POINT(4 2)
		)'
	)
);