-- cw.4 utworzenie tabel
CREATE TABLE buildings (
    id SERIAL PRIMARY KEY,
    geometry geometry,
	name VARCHAR(50)
);

CREATE TABLE roads (
    id SERIAL PRIMARY KEY,
	geometry geometry,
    name VARCHAR(50)
);

CREATE TABLE poi (
    id SERIAL PRIMARY KEY,
	geometry geometry,
    name VARCHAR(50)
);