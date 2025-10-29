-- 1.e
INSERT INTO obiekty(name, geometry)
VALUES ('obiekt5', 
	ST_GeomFromEWKT(
		'SRID=0;MULTIPOINT((30 30 59), (38 32 234))'
	)
);
