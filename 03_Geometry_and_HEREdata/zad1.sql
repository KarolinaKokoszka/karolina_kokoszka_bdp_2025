-- 1. utworzenie tabeli obiekty
CREATE TABLE obiekty (
	id SERIAL PRIMARY KEY,
	geometry geometry,
	name VARCHAR(32)
);